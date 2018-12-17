package com.qf.admin.service.impl;

import com.qf.admin.dao.UserDao;
import com.qf.admin.pojo.po.PageModel;
import com.qf.admin.pojo.po.User;
import com.qf.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public PageModel showAllUserByPage(int curNum) {
        int totalRecords = userDao.findUsersTotal();
        System.out.println("总条数");
        System.out.println(totalRecords);
        PageModel pm = new PageModel(curNum,totalRecords,5);

        List list = userDao.showAllUserByPage(pm.getStartIndex(),pm.getPageSize());

        pm.setList(list);

        pm.setUrl("users");

        return pm;
    }

    @Override
    public PageModel seachUserByPage(int curNum, String search) {
        int totalRecords = userDao.findUsersTotalByName(search);
        System.out.println("总条数"+totalRecords);
        PageModel pm = new PageModel(curNum,totalRecords,5);

        List list = userDao.seachUserByPage(search,pm.getStartIndex(),pm.getPageSize());
        System.out.println(list);
        pm.setList(list);

        pm.setUrl("seachUser?search="+search);

        return pm;
    }

    @Override
    public int addUser(User user) {
        int i = 0;
        try {
            i = userDao.addUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public User findUserById(User user) {
        try {
            user = userDao.findUserById(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public int updateUser(User user) {
        int i = 0;
        try {
            i = userDao.updateUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    @Override
    public int deleteUser(User user) {
        int i = 0;
        try {
            i = userDao.deleteUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
