package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.PageModel;
import com.qf.admin.pojo.po.User;

public interface UserService {
    PageModel showAllUserByPage(int curNum);

    PageModel seachUserByPage(int curNum, String search);

    int addUser(User user);

    User findUserById(User user);

    int updateUser(User user);

    int deleteUser(User user);

    JSONObject listUsersJson(JSONObject jsonObject);

    User findUser(int uid);

    int deleteUser1(int uid);
}
