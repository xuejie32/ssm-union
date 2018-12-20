package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Order;
import com.sun.tools.corba.se.idl.constExpr.Or;

public interface OrderService {
    int deleteOrder(int oid);
    JSONObject getAllOrders(JSONObject jsonObject);
    int addOrder(Order order);
    int updateOrder(Order order);
    Order getOrder(int oid);
}
