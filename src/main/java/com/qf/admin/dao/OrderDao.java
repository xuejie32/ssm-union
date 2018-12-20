package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Order;
import com.sun.tools.corba.se.idl.constExpr.Or;

import java.util.List;

public interface OrderDao {
    int deleteOrder(int oid);

    List<Order> getAllOrders(JSONObject jsonObject);

    Long countOrders(JSONObject jsonObject);
    int addOrder(Order order);
    int updateOrder(Order order);
    Order getOrder(int oid);
}
