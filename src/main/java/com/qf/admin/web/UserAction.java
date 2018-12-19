package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.PageModel;

import com.qf.admin.pojo.po.User;

import com.qf.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserAction {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/listUsers",method = RequestMethod.GET)
    public String showAllUserByPage(@RequestParam(defaultValue = "1")int num, Model model){

        int curNum = num;

        System.out.println(curNum);
        PageModel pm  = userService.showAllUserByPage(curNum);

        model.addAttribute("page",pm);

        return "index10";
    }

    @RequestMapping(value = "/seachUser",method = RequestMethod.GET)
    public String seachUser(@RequestParam("search") String search,@RequestParam(defaultValue = "1")int num,Model model){
        System.out.println(search);
        int curNum = num;
        System.out.println(curNum);
        PageModel pm = userService.seachUserByPage(curNum,search);
        // List<Student> studentList = studentService.seachStudent(seach);

        //model.addAttribute("studentList",studentList);
        model.addAttribute("page",pm);
        model.addAttribute("msg",search);
        return "index1";
    }


    @ResponseBody
    @RequestMapping(value = "/editUser",method = RequestMethod.GET)
    public User toEditStudent(User user){
        user = userService.findUserById(user);
        System.out.println(user);
        System.out.println("11");
        return user;
    }


    //使用bootstrap table分页
    @GetMapping("/{page}")
    public String page(@PathVariable String page){
        return page;
    }

    @ResponseBody
    @RequestMapping(value = "/users",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object listUsers(@RequestBody JSONObject jsonObject){
        jsonObject = userService.listUsersJson(jsonObject);
        return jsonObject;
    }
    @ResponseBody
    @RequestMapping(value = "/user/{uid}",method = RequestMethod.GET)
    public User findUser(@PathVariable("uid")int uid){
        User user = userService.findUser(uid);
        return user;
    }

    @PostMapping("/updateUser")
    public String updateUser(User user){
        userService.updateUser(user);
        return "redirect:index1";
    }
    @ResponseBody
    @RequestMapping(value = "/deleteUser",method = RequestMethod.GET)
    public int deleteUser(@RequestParam("uid") Integer uid){
        System.out.println(uid);
        int i = userService.deleteUser1(uid);
        return i;
    }

    @RequestMapping(value = "/addUser",method = RequestMethod.POST)
    public String addUser(User user){

        userService.addUser(user);

        return "redirect:index1";
    }

}
