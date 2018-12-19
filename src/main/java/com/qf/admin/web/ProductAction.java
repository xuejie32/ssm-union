package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Product;
import com.qf.admin.service.impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class ProductAction {
    @Autowired
    private ProductServiceImpl ser;

    /*@GetMapping("/{page}")
    public String product(@PathVariable String page){
        return page;
    }*/
    //ee

    @ResponseBody
    @RequestMapping(value = "/products",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object listProducts(@RequestBody JSONObject jsonObject){
        System.out.println(jsonObject);
        jsonObject=ser.ListProducts(jsonObject);
        return jsonObject;
    }

    /**
     * 新增商品
     */
    @PostMapping("/saveProduct")
    public String addProduct(Product p){
        int i=ser.addProduct(p);
        System.out.println(i);
        return "redirect:product";
    }

    /**
     * 修改商品
     */
    @PostMapping("/updateProduct")
    public String update(Product p){
        int i=ser.updateProduct(p);
        return "redirect:product";
    }

    /**
     * 删除商品
     */
    @GetMapping("/deleteProduct")
    public String deleteProduct(Product p){
        int i=ser.deleteProduct(p);
        return "redirect:product";
    }
}
