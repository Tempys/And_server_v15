package com.dubovskiyM.mvc.service;

import com.dubovskiyM.mvc.entity.Image_save;
import com.dubovskiyM.mvc.entity.Signup;
import com.dubovskiyM.mvc.repository.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by angel on 27.05.14.
 */
@Service
@Transactional
public class ImageService {

@Autowired
ImageRepository imageRepository;


@Transactional(readOnly = false)
public void Image_save(Image_save image_save){
    imageRepository.save(image_save);
}

@Transactional(readOnly = true)
public List<Image_save> ImageList(String UserLogin){
    return imageRepository.findBySignupLogin(UserLogin);
}

@Transactional(readOnly = true)
public int SelectMax(String login){
    return  imageRepository.SelectMax(login).intValue();
}

}
