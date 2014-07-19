package com.dubovskiyM.mvc.controller;

import com.dubovskiyM.mvc.entity.Image_save;
import com.dubovskiyM.mvc.entity.Signup;
import com.dubovskiyM.mvc.repository.User_repository;
import com.dubovskiyM.mvc.service.ImageService;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Created by angel on 01.05.14.
 */
@Controller
@RequestMapping("/image")
public class Image_save_controller {
    private final Logger log = LoggerFactory.getLogger(getClass());


    @Autowired
    ImageService imageService;

    @Autowired
    private User_repository user_repository;

    @RequestMapping(value = "/owner/{login}", method = RequestMethod.POST, consumes = "multipart/form-data")
    public
    @ResponseBody
    String image_save_log(@PathVariable String login, HttpServletRequest request, HttpServletResponse response) {

       /*        Greate folder               */
        File file = new File("D:/Server/And_server/And_server_v14/src/main/webapp/resources/image/" + login);
        if (file.exists()) {
            System.out.println("Directory EXIST");
        } else file.mkdir();

        /*       / Greate folder               */

        String fileName = "";
        MultipartFile multipartFile = null;


       /*-----------------IMAGE PATH----------------------------------------*/
        String pathName = "/image/" + login + "/";
        String imageName = "";
        String category = "";


        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        Map<String, MultipartFile> map = multipartRequest.getFileMap();


        for (Map.Entry<String, MultipartFile> iterator : map.entrySet()) {
            log.trace(iterator.getKey() + " " + iterator.getValue());
            if (iterator.getKey().equals("Data")) {
                multipartFile = (MultipartFile) iterator.getValue();
                imageName = String.valueOf(imageService.SelectMax(login) + 1) + ".JPG";
            } else if (iterator.getKey().equals("Category")) {
                category = iterator.getValue().getName();
                log.trace("START !!!!!!!!!!!!!!" + "    " + iterator.getValue().getOriginalFilename() + " " + iterator.getValue().getName());
            }

        }

        //   logger.info("Original fileName - " + multipartFile.getOriginalFilename());
        //   logger.info("fileName - " + fileName);
        writeToDisk(pathName + imageName, multipartFile);


        Signup signup = user_repository.findByLogin(login);
        log.trace(signup.getLogin());

    /*           Saving entities                   */
        Image_save image_save = new Image_save();
        image_save.setSignup(signup);
        image_save.setName(imageName);
        image_save.setImage_path(pathName);
        image_save.setCategory(category);
        imageService.Image_save(image_save);
       /*          / Saving entities                   */

        return "ok " + fileName + " " + multipartFile.getSize();
    }

    public void writeToDisk(String filename, MultipartFile multipartFile) {
        try {
            String fullFileName = "D:/Server/And_server/And_server_v14/src/main/webapp/resources" + filename;
            FileOutputStream fos = new FileOutputStream(fullFileName);
            fos.write(multipartFile.getBytes());
            fos.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
