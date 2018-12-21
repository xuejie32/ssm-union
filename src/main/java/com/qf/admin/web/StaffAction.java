package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Staff;
import com.qf.admin.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

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
    public String addstaff(Staff staff, HttpServletRequest request, @RequestParam("file")MultipartFile file){
        if (!file.isEmpty()){
            String path = request.getServletContext().getRealPath("/photo/");
            String filename = file.getOriginalFilename();
            //String newFilename="/images/"+filename;
            //获取file对象
            File filePath = new File(path,filename);
            //判断路径是否存在,不存在就创建一个
            if (!filePath.getParentFile().exists()){
                filePath.getParentFile().mkdirs();
            }
            //将上传文件保存在一个目标文件中
            try {
                file.transferTo(new File(path +File.separator +filename));
            }catch (Exception e){
                e.printStackTrace();
            }
            String newFilename="photo/"+filename;
            staff.setSimage(newFilename);
        }

        staffService.addstaff(staff);
        return "redirect:staff";
    }

    @RequestMapping(value = "/webShowStaff",method = RequestMethod.GET)
    public String webShowStaff(Model model){
        List<Staff> liststaff=staffService.webShowStaff();
        System.out.println(liststaff);
        model.addAttribute("staff",liststaff);
        return "staffweb";
    }
}
