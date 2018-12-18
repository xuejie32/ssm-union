package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.CarVO;
import com.qf.admin.pojo.po.Car;
import com.qf.admin.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class CarController {
    @Autowired
    private CarService carService;
    @GetMapping(value = "/{path}")
    public String path(@PathVariable String path){
        return path;
    }

    @PostMapping(value = "/cars",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public JSONObject getCar(@RequestBody JSONObject obj){
        return carService.getCar(obj);

    }
    @PostMapping(value = "car")
    public String addCar(Car car){
        carService.addCar(car);
        return "redirect:car";
    }
    @PostMapping(value = "upCar")
    public String upCar(Car car){
        carService.upCar(car);
        return "redirect:car";
    }
    @PostMapping(value = "/toupCar")
    @ResponseBody
    public Car getCarByCid(Car car){
        return carService.getCarByCid(car);
    }
    @GetMapping(value = "delCar")
    public String delCar(Car car){
        carService.delCar(car);
        return "redirect:car";
    }
}
