package com.qf.admin.web;

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

    @RequestMapping(value = "/users",method = RequestMethod.GET)
    public String showAllUserByPage(@RequestParam(defaultValue = "1")int num, Model model){

        int curNum = num;

        System.out.println(curNum);
        PageModel pm  = userService.showAllUserByPage(curNum);

        model.addAttribute("page",pm);

        return "index1";
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

    @RequestMapping(value = "/addUser",method = RequestMethod.POST)
    public String addUser(User user){

        userService.addUser(user);

        return "redirect:users";
    }

    @ResponseBody
    @RequestMapping(value = "/editUser",method = RequestMethod.GET)
    public User toEditStudent(User user){
        user = userService.findUserById(user);
        System.out.println(user);
        System.out.println("11");
        return user;
    }

    @PostMapping("/updateUser")
    public String updateUser(User user){
        userService.updateUser(user);

        return "redirect:users";
    }

    @RequestMapping(value = "/deleteUser",method = RequestMethod.GET)
    public String deleteUser(User user){

        userService.deleteUser(user);

        return "redirect:users";
    }
}
