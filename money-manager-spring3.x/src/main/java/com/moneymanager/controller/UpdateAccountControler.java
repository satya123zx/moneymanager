package com.moneymanager.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.bean.NewAccount;
import com.moneymanager.service.CreateAccountService;

@Controller
@RequestMapping("updateAccount")
public class UpdateAccountControler {
	
	@Autowired
	private CreateAccountService createAccountService;
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView UpdateAccount(@ModelAttribute("updateAccountDetails") NewAccount newAccount) throws SQLException{
		System.out.println("[UpdateAccountControler][updateAccountDetails] Update Account Page...");
		System.out.println(newAccount);
		createAccountService.update(newAccount);
		return new ModelAndView("redirect:accountsviewall");
	}
}
