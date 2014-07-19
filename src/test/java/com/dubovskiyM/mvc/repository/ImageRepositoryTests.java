package com.dubovskiyM.mvc.repository;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:/spring/root-context.xml"})
public class ImageRepositoryTests {
    private final Logger log = LoggerFactory.getLogger(getClass());

    @Autowired ImageRepository imageRepository;

    @Test
    @Transactional
    public void selectMaxTest(){
        Long testValue = imageRepository.SelectMax("d");
        log.trace("selectMaxTest(), testValue: " + testValue);
        Assert.assertTrue(testValue > 0);
    }

}
