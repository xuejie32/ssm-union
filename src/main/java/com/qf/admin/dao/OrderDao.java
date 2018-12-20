package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Order;

import java.util.List;

public interface OrderDao {
    int deleteOrder(int oid);

    List<Order> getAllOrders(JSONObject jsonObject);

    Long countOrders(JSONObject jsonObject);
}
