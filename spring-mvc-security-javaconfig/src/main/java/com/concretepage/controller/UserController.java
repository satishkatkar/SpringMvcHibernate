package com.concretepage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.concretepage.entity.UserInfo;
import com.concretepage.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private  IUserService service;
	@RequestMapping(value="/home")
	public String home(ModelMap model, Authentication authentication) {
		authentication.getPrincipal();
//		UserInfo user = service.getDataByUserName(authentication.getName());
//		if(user.getRole().equals("ADMIN")) {
//			 model.addAttribute("user",user);
//			 return "admin-home";	
//		}
//	   else if(user.getRole().equals("MANAGER")) {
//			 model.addAttribute("user",user);
//	         return "manager-home";
//	   }
//	   else
//	   {
//		      return "employee-home";
//		
//	   }  
		    
		model.addAttribute("user", service.getDataByUserName(authentication.getName()));
		return "user-info";
		 
	}
	@RequestMapping(value="/error")
	public String error() {
 		return "access-denied";
 	}
	
	@RequestMapping("/addNew")
	public String add(Model map) {
		map.addAttribute("UserInfo", new UserInfo());
		return "addNew";
	
	}
	@RequestMapping(value="/addNew", method=RequestMethod.POST)
	public String addNew(@ModelAttribute("UserInfo") UserInfo ui,ModelMap map,Authentication authentication) {
		service.addNew(ui);
		authentication.getPrincipal();
		map.addAttribute("user", service.getDataByUserName(authentication.getName()));
		return "user-info";
	
	}
	
	
	
	
	
	
}	