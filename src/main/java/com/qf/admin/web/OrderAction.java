package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class OrderAction {
    @Autowired
    OrderService orderService;
    @ResponseBody
    @RequestMapping(value = "/deleteOrder/{oid}",method = RequestMethod.DELETE)
    public int deleteOrder(@PathVariable("oid") int oid){
        System.out.println(oid);
        int i=orderService.deleteOrder(oid);
        return i;
    }

    @ResponseBody
    @RequestMapping(value = "/showAllOrders",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object showAllOrders(@RequestBody JSONObject jsonObject){
        jsonObject =orderService.getAllOrders(jsonObject);
        return jsonObject;
    }

}