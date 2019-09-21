package cn.kgc.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Delete;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.kgc.entity.User;
import cn.kgc.service.UserService;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	ModelAndView modelAndView = new ModelAndView("user");
	@Autowired
	private UserService userService;
	
	@RequestMapping("/userlist")
	public ModelAndView listAll() {
		List<User> users = userService.listAll();
		modelAndView.addObject("users", users);
		return modelAndView;
	}
	
	@RequestMapping("/deleteuserbyid/{uid}")
	public ModelAndView delete(@PathVariable int uid) {
		this.userService.delete(uid);
		return listAll();
	}

	@RequestMapping("/add")
	public String add(User user) {
		this.userService.add(user);
		return ("redirect:/userlist");
	}

	
	@RequestMapping("/editUser")
	@ResponseBody
	public User editUser(int uid) {
		User user = userService.selectById(uid);
		return user;
	}
	
	@RequestMapping("/updateOne")
	@ResponseBody
	public String updateOne(User user) {
		
		this.userService.update(user);
		return ("redirect:/userlist");
	}
	
}
