package com.moneymanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.moneymanager.bean.LoginForm;

@Controller
@RequestMapping("login")
public class LoginController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView loadLoginPage() {
		
		System.out.println("[LoginController][loadLoginPage] Rendering Login Page...");
		//return new ModelAndView("transactionsnew");
		return new ModelAndView("login", "loginModel", new LoginForm());
		//return new ModelAndView("Ajax");
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processLoginForm(@ModelAttribute("loginModel") LoginForm loginForm) {
		System.out.println("[LoginController][processLoginForm] Processing Login Form...");
		
		if (loginForm.getUsername().equals(loginForm.getPassword())) {
			System.out.println("passord matched");
			return new ModelAndView("redirect:accountsviewall");
		}
		
		return new ModelAndView("login");
	}
}