package com.dubovskiyM.mvc.controller;

import com.dubovskiyM.mvc.repository.ImageRepository;
import com.dubovskiyM.mvc.service.ImageService;
import com.dubovskiyM.mvc.service.User_service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

/**
 * Created by angel on 31.05.14.
 */
@Controller
public class UserController {

    private final Logger log = LoggerFactory.getLogger(getClass());
    @Autowired
    ImageService imageService;
    @Autowired
    User_service user_service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(Model model) {
        log.trace("STARt________________");
        return "login";
    }


    @RequestMapping(value = "/gallery_p", method = RequestMethod.GET)
    public String GetGall(Model model, Principal principal) {
        final String name = principal.getName();
        log.trace("STARt________________");

        model.addAttribute("tt", imageService.ImageList(name));
        log.trace(imageService.ImageList(name).get(0).getImage_path() + imageService.ImageList(name).get(0).getName());

        return "body/gallery_s";
    }


}
