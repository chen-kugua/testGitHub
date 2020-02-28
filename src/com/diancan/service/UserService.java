package com.diancan.service;

import com.diancan.dao.UserDao;
import com.diancan.entity.Good;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserDao userDao;

    @Transactional
    public List<Good> queryAllGoods() {
        return userDao.queryAllGoods();
    }
}
