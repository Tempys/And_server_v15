package com.dubovskiyM.mvc.repository;

import com.dubovskiyM.mvc.entity.Signup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by angel on 26.05.14.
 */
@Repository
public interface User_repository extends JpaRepository<Signup,Long>  {

    Signup findByLogin(String login);
    Signup findByLoginAndPassword(String login,String password);

}
