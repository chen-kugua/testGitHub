package com.diancan.service;

import com.diancan.dao.HelloDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HelloService {
    @Autowired
    HelloDao helloDao;
    public void hello(){
        System.out.println(helloDao.hello());
    }
}
