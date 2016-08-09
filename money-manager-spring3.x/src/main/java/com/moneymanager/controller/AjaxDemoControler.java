package com.moneymanager.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.bean.LoginForm;

@Controller
public class AjaxDemoControler {
	
	@RequestMapping("AjaxDemo")
	public @ResponseBody LoginForm DemoMethod(HttpServletRequest request,HttpServletResponse response ){
		
		System.out.println("[AjaxDemoControler][DemoMethod] DEMO METHOD Called...."+request.getParameter("username"));
		//String returnText;
		//returnText = "satya";
		LoginForm form = new LoginForm();
		form.setUsername(request.getParameter("username"));
		form.setPassword(request.getParameter("password"));
		
		return form;
	
	}
}
