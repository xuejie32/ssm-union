package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;

public interface OrderService {
    int deleteOrder(int oid);
    JSONObject getAllOrders(JSONObject jsonObject);
}
