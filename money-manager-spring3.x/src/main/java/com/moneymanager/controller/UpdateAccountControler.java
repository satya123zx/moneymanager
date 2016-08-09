package com.moneymanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.bean.NewAccount;

@Controller
@RequestMapping("updateAccount")
public class UpdateAccountControler {
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView UpdateAccount(@ModelAttribute("updateAccountDetails") NewAccount newAccount){
		System.out.println("[UpdateAccountControler][updateAccountDetails] Update Account Page...");
		System.out.println(newAccount.getAccountID());
		
		return new ModelAndView("redirect:accountsviewall");
	}
}
