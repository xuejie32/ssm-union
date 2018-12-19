package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Product;

public interface ProductService {

    JSONObject ListProducts(JSONObject jsonObject);

    int addProduct(Product p);

    int updateProduct(Product p);

    int deleteProduct(Product p);
}
