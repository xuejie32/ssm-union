package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Staff;

import java.util.List;

public interface StaffDao {
    List<Staff> showAllStaff(JSONObject jsonObject);
    Long totalCountStaff(JSONObject jsonObject);
    Staff toUpdateStaff(int sid);
    int updatestaff(Staff staff);
    int delete(int sid);
    int addstaff(Staff staff);
}
