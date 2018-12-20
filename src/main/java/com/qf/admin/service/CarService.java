package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.CarVO;
import com.qf.admin.pojo.CarVO1;
import com.qf.admin.pojo.po.Car;

import java.util.List;

public interface CarService {
    JSONObject getCar(JSONObject obj);

    void addCar(Car car);

    void upCar(Car car);

    void delCar(Car car);

    Car getCarByCid(Car car);

    List<CarVO1> getCar1(String uid);
}
