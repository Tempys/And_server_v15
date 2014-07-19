package com.dubovskiyM.mvc.repository;

import com.dubovskiyM.mvc.entity.Image_save;
import com.dubovskiyM.mvc.entity.Signup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by angel on 27.05.14.
 */
@Repository
public interface ImageRepository extends JpaRepository<Image_save,Long> {

    List<Image_save> findBySignupLogin(String UserLogin);

    @Query(value ="SELECT MAX(id) from image_save WHERE login = ?1", nativeQuery = true)
    Long SelectMax(String login);


}
