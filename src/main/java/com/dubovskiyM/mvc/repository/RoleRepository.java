package com.dubovskiyM.mvc.repository;

import com.dubovskiyM.mvc.entity.Image_save;
import com.dubovskiyM.mvc.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by angel on 07.06.14.
 */
@Repository
public interface RoleRepository extends JpaRepository<Role,Long> {
    Role findByRole(String role);
}
