package com.dubovskiyM.mvc.service;

import com.dubovskiyM.mvc.entity.Signup;

import com.dubovskiyM.mvc.repository.User_repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by angel on 26.05.14.
 */

@Service
@Transactional
public class User_service   {

@Autowired
private User_repository user_repository;


@Transactional(readOnly = false)
public void save(Signup signup){
    user_repository.save(signup);
}


@Transactional(readOnly = true)
public Signup findByLogin(String login){
Signup signup = user_repository.findByLogin(login);
return signup;
}

@Transactional(readOnly = true)
public Signup findByLoginAndPassword(String login,String password){
    Signup signup = user_repository.findByLoginAndPassword(login, password);
    return signup;
}

}
