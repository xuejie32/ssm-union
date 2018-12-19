package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Product;

import java.util.List;

public interface ProductDao {
    List<Product> listProduct(JSONObject jsonObject)throws Exception;

    Long tatol(JSONObject jsonObject)throws Exception;

    int addProduct(Product p)throws Exception;


    int updateProduct(Product p)throws Exception;

    int deleteProduct(Product p)throws Exception;

    List<Product> AllProduct()throws Exception;
}
