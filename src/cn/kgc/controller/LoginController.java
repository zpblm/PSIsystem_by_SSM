package cn.kgc.controller;

import cn.kgc.mapper.UMapper;
import cn.kgc.service.LoginService;
import org.apache.shiro.session.Session;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("login_user")
public class LoginController {

    private String unametmp;
    private String opwdtmp;

    @Autowired
    private LoginService loginService;

    @Autowired
    private UMapper uMapper;

    @RequestMapping("/userlogin")
    public ModelAndView login(String login_name, String login_pwd){
        ModelAndView modelAndView = new ModelAndView();
        if (this.loginService.login(login_name,login_pwd)){
            modelAndView.setViewName("index");
            unametmp = login_name;
            opwdtmp = login_pwd;
            modelAndView.addObject("login_user",login_name);
            modelAndView.addObject("login_pwd",login_pwd);
        }
        else {
            modelAndView.setViewName("login");
            modelAndView.addObject("tag","请正确输入您的用户名和密码"); }
        return modelAndView;
    }
    @RequestMapping("/outlogin")
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject("tag","请重新登录");
        return modelAndView;
    }
    @RequestMapping("/toupdatepwd")
    public ModelAndView topwd(){
        ModelAndView modelAndView = new ModelAndView("updatePwd");
        modelAndView.addObject("login_user",unametmp);
        modelAndView.addObject("login_pwd",opwdtmp);
        return modelAndView;
    }
    @RequestMapping("/updatepwd")
    public ModelAndView pwd(@RequestParam("uname")String uname, @RequestParam("pwd")String pwd,@RequestParam("npwd")String npwd){
        ModelAndView modelAndView = new ModelAndView("updatePwd");
        if (this.uMapper.predatePwd(uname).equals(pwd)){
            this.uMapper.updatePwd(uname,npwd);
            modelAndView.addObject("login_pwd",npwd);
        }

        return modelAndView;
    }
}
