package com.dubovskiyM.mvc.security;

import java.util.ArrayList;
import java.util.Collection;

import com.dubovskiyM.mvc.entity.Signup;
import com.dubovskiyM.mvc.repository.User_repository;
import com.dubovskiyM.mvc.service.User_service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by angel on 09.06.14.
 */
@Service
public class AuthServiceImpl implements UserDetailsService {

    private final Logger log = LoggerFactory.getLogger(getClass());
    @Autowired
    User_repository user_service;

    @Transactional
    @Override
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {
        log.trace("START-------------------------------------");

        Signup details = user_service.findByLogin(username);
        log.trace(details.getLogin() + "---------------------" + details.getPassword()+" "+details.getRole());

        Collection<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();

        SimpleGrantedAuthority userAuthority = new SimpleGrantedAuthority(
                "ROLE_USER");
        SimpleGrantedAuthority adminAuthority = new SimpleGrantedAuthority(
                "ROLE_ADMIN");


        if (details.getRole() == 1) {
            authorities.add(userAuthority); }
        else if (details.getRole() == 2) {
            authorities.add(userAuthority);
            authorities.add(adminAuthority);
        }


        UserDetails user = new User(details.getLogin(),
                details.getPassword(), true, true, true, true, authorities);

        return user;
    }

}