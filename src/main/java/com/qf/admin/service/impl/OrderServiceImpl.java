package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.dao.OrderDao;
import com.qf.admin.pojo.po.Order;
import com.qf.admin.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{
    //日志类的定义
    private final static Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);
    @Autowired
    private OrderDao orderDao;
    @Override
    public int deleteOrder(int oid) {
        int result=0;
        try {
            result=orderDao.deleteOrder(oid);
        }catch (Exception e){
            logger.info(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public JSONObject getAllOrders(JSONObject jsonObject) {
        JSONObject jo=new JSONObject();
        try {
            List<Order> rows=orderDao.getAllOrders(jsonObject);
            Long total=orderDao.countOrders(jsonObject);
            jo.put("total",total);
            jo.put("rows",rows);
        }catch (Exception e){
            logger.info(e.getMessage(), e);
            e.printStackTrace();
        }
        return jo;
    }
}
