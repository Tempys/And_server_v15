package com.dubovskiyM.mvc.controller;

import com.dubovskiyM.mvc.entity.Signup;
import com.dubovskiyM.mvc.service.RoleService;
import com.dubovskiyM.mvc.service.User_service;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@Controller
//@RequestMapping("/test")
public class SignupController {


    private final Logger log = LoggerFactory.getLogger(getClass());
    @Autowired
    User_service user_service;
    @Autowired
    RoleService roleService;

    @RequestMapping(value = "/regist", method = RequestMethod.POST)
    public
    @ResponseBody
    String signupm(@RequestBody String s) {
        log.info("listUser() start ...");

        Gson gson = new Gson();
        Map<String, String> map = gson.fromJson(s, new TypeToken<Map<String, String>>() {
        }.getType());

        Signup signup = new Signup(map.get("name"), map.get("surname"), map.get("login"), map.get("password"));

        if (null == user_service.findByLogin(signup.getLogin()))
            user_service.save(signup);

        return s;
    }

    @RequestMapping(value = "/signin", method = RequestMethod.POST)
    public
    @ResponseBody
    String signin(@RequestBody String s) {

        String answer = "no";
        Gson gson = new Gson();
        Map<String, String> map = gson.fromJson(s, new TypeToken<Map<String, String>>() {
        }.getType());
        String login = map.get("login");
        String password = map.get("password");

        if (null != user_service.findByLoginAndPassword(login, password).getLogin())
            answer = "ok";

        return answer;
    }


}
