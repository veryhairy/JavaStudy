package com.yy.aop;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static org.junit.Assert.*;

public class TransactionTest {
    @Test
    public void setUp() throws Exception {
        ApplicationContext context=new ClassPathXmlApplicationContext("spring-config.xml");
        UserDao userDao = (UserDao) context.getBean("userDao");

        userDao.add();
        userDao.delete();

    }

}