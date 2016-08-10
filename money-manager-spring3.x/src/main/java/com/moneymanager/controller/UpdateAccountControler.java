package com.moneymanager.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.bean.NewAccount;
import com.moneymanager.service.CreateAccountService;

@Controller
public class UpdateAccountControler {
	
	@Autowired
	private CreateAccountService createAccountService;
	
	@RequestMapping(value = "updateAccount",method = RequestMethod.POST)
	public ModelAndView UpdateAccount(@ModelAttribute("updateAccountDetails") NewAccount newAccount) throws SQLException{
		System.out.println("[UpdateAccountControler][updateAccountDetails] Update Account Page...");
		System.out.println(newAccount);
		createAccountService.update(newAccount);
		return new ModelAndView("redirect:accountsviewall");
	}
	
	@RequestMapping(value = "deleteAccount",method = RequestMethod.POST)
	public @ResponseBody String DeleteAccount(@RequestParam String accountID) throws SQLException{
		System.out.println("[UpdateAccountControler][DeleteAccount] Delete Account Page...");
		int row = createAccountService.DeleteAccount(accountID);
		System.out.println(accountID);
		if (row == 1) {
			return "account deleted";
		}else{
			return "account not able to delete";
		}
		
		
	}
}
