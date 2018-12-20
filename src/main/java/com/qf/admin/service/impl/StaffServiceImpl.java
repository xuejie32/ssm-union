package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.dao.StaffDao;
import com.qf.admin.pojo.po.Staff;
import com.qf.admin.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {
    @Autowired
    private StaffDao staffDao;
    @Override
    public JSONObject showAllStaff(JSONObject jsonObject){
        JSONObject jo=new JSONObject();
        try{
           List<Staff> staffList=staffDao.showAllStaff(jsonObject);
           int total=(staffDao.totalCountStaff(jsonObject)).intValue();
           jo.put("total",total);
           jo.put("rows",staffList);
        }catch (Exception e){
            e.printStackTrace();
        }
        return jo;
    }
    @Override
    public Staff toUpdateStaff(int sid){
        Staff staff=null;
        try{
            staff=staffDao.toUpdateStaff(sid);
        }catch (Exception e){
            e.printStackTrace();
        }
        return staff;
    }
    @Override
    public int updatestaff(Staff staff){
        int i=0;
        try{
            i=staffDao.updatestaff(staff);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    @Override
    public int delete(int sid){
        int i=0;
        try{
            i=staffDao.delete(sid);
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
    @Override
    public int addstaff(Staff staff){
        int i=0;
        try{
            i=staffDao.addstaff(staff);
        }catch (Exception e){
            e.printStackTrace();
        }
        return i;
    }
    @Override
    public List<Staff> webShowStaff(){
        List<Staff> liststaff=null;
        try{
            liststaff=staffDao.webShowStaff();
        }catch (Exception e){
            e.printStackTrace();
        }
        return liststaff;
    }
}
