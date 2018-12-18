package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {


    int findUsersTotal();

    List showAllUserByPage(@Param("startIndex") int startIndex, @Param("pageSize") int pageSize);

    int findUsersTotalByName(String search);

    List seachUserByPage(@Param("search") String search,@Param("startIndex")int startIndex, @Param("pageSize")int pageSize);

    int addUser(User user);

    User findUserById(User user);

    int updateUser(User user);

    int deleteUser(User user);

    List<User> listUsers(JSONObject jsonObject);

    Long countUsers(JSONObject jsonObject);

    User findUser(int uid);

    int deleteUser1(int uid);
}
