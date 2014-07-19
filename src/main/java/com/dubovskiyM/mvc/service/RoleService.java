package com.dubovskiyM.mvc.service;

import com.dubovskiyM.mvc.entity.Role;
import com.dubovskiyM.mvc.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by angel on 07.06.14.
 */
@Service
public class RoleService {

    @Autowired
    RoleRepository roleRepository;

  public Role findbyRole(String role){
      return roleRepository.findByRole(role);
  }

}
