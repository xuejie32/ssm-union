package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.dao.ProductDao;
import com.qf.admin.pojo.po.Product;
import com.qf.admin.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao dao;
    @Override
    public JSONObject ListProducts(JSONObject jsonObject) {

        JSONObject jo=new JSONObject();
        try {
            List<Product> rows=dao.listProduct(jsonObject);
            Long total=dao.tatol(jsonObject);
        /*    for (Product p:rows) {
               Date e =p.getPdate();
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                String i=sdf.format(e);
                p.setPdate(i);
                System.out.println(e);
            }*/

            jo.put("rows",rows);
            jo.put("total",total);
            return jo;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;

    }


    @Override
    public int addProduct(Product p) {

        try {

            p.setPdate(new Date());
            System.out.println(p.getPdate());
            return dao.addProduct(p);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int updateProduct(Product p) {
        try {
            return  dao.updateProduct(p);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int deleteProduct(Product p) {
        try {
            return dao.deleteProduct(p);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Product> AllProduct() {

        try {
            return dao.AllProduct();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
