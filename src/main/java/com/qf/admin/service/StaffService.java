package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Staff;

import java.util.List;

public interface StaffService {
    JSONObject showAllStaff(JSONObject jsonObject);
    Staff toUpdateStaff(int sid);

    int updatestaff(Staff staff);
    int delete(int sid);
    int addstaff(Staff staff);
    List<Staff> webShowStaff();
}
