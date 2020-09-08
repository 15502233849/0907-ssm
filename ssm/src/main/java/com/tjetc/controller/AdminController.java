package com.tjetc.controller;

import com.tjetc.domain.Admin;
import com.tjetc.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/validUsername")
    @ResponseBody
    public boolean validUsername(String username){
        Admin admin=adminService.findByUsername(username);
        return admin!=null;
    }
    @RequestMapping("/validPassword")
    @ResponseBody
    public boolean validPassword(String username,String password){
        Admin admin=adminService.findByUsername(username);
        return admin!=null&&admin.getPassword().equals(password);
    }
    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session){
        Admin admin=adminService.findByUsername(username);
//        将实体类对象放入session
        session.setAttribute("admin", admin);
//        重定向到主页面
        return "redirect:/admin/home.jsp";
    }
}
