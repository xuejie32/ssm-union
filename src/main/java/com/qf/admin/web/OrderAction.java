package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Order;
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
    @RequestMapping(value = "/deleteOrder/{oid}",method = RequestMethod.POST)
    public int deleteOrder(@PathVariable("oid") int oid){
        int i=orderService.deleteOrder(oid);
        return i;
    }

    @ResponseBody
    @RequestMapping(value = "/showAllOrders",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object showAllOrders(@RequestBody JSONObject jsonObject){
        jsonObject =orderService.getAllOrders(jsonObject);
        return jsonObject;
    }
    @PostMapping(value = "/addOrder")
    public String addUser(Order order){

        orderService.addOrder(order);

        return "redirect:order";
    }

    @PostMapping("/updateOrder")
    public String updateUser(Order order){
        System.out.println(order.getUserId());
        orderService.updateOrder(order);
        return "redirect:order";
    }
    @ResponseBody
    @GetMapping(value = "/order/{oid}")
    public Order getOrder(@PathVariable("oid") int oid){
        Order order=orderService.getOrder(oid);
        return order;
    }

    @ResponseBody
    @RequestMapping(value = "/showOrders",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object showOrders(@RequestBody JSONObject jsonObject){
        jsonObject =orderService.getAllOrders(jsonObject);
        return jsonObject;
    }
}