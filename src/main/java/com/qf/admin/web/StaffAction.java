package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Staff;
import com.qf.admin.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class StaffAction {
    @Autowired
    private StaffService staffService;
    @ResponseBody
    @RequestMapping(value = "/showAllStaff",method = RequestMethod.POST,produces="application/json;charset=UTF-8")
    public JSONObject showAllStaff(@RequestBody JSONObject jsonObject){
        jsonObject=staffService.showAllStaff(jsonObject);
        return jsonObject;
    }
    @ResponseBody
    @GetMapping("/toUpdateStaff/{sid}")
    public Staff toUpdateStaff(@PathVariable("sid")int sid){
       Staff staff = staffService.toUpdateStaff(sid);
       return staff;
    }
    @PostMapping("/updatestaff")
    public String updatestaff(Staff staff){

        staffService.updatestaff(staff);
        return "redirect:staff";
    }
    @ResponseBody
    @GetMapping("/deletestaff/{sid}")
    public int delete(@PathVariable("sid")int sid){
        int i=staffService.delete(sid);
        return i;
    }
    @PostMapping("/addstaff")
    public String addstaff(Staff staff){
        staffService.addstaff(staff);
        return "redirect:staff";
    }
}
