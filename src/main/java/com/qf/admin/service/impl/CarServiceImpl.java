package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.dao.CarDao;
import com.qf.admin.pojo.CarVO1;
import com.qf.admin.pojo.po.Car;
import com.qf.admin.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CarServiceImpl implements CarService {
    @Autowired
    private CarDao carDao;
    @Override
    public JSONObject getCar(JSONObject obj) {
        List<Car> list = carDao.getCar(obj);
        int total = carDao.getCarCount(obj);
        obj.put("rows",list);
        obj.put("total",total);
        carDao.getCar(obj);
        return obj;
    }

    @Override
    public void addCar(Car car) {
        carDao.addCar(car);
    }

    @Override
    public void upCar(Car car) {
        carDao.upCar(car);
    }

    @Override
    public void delCar(Car car) {
        carDao.delCar(car);
    }

    @Override
    public Car getCarByCid(Car car) {
        return carDao.getCarByCid(car);
    }

    @Override
    public List<CarVO1> getCar1(String uid) {
        return carDao.getCar1(uid);
    }
}
