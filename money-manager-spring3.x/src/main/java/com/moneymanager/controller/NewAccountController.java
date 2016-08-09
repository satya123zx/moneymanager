package com.moneymanager.controller;

import java.sql.SQLException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.moneymanager.bean.NewAccount;
import com.moneymanager.service.CreateAccountService;

@Controller
@RequestMapping("newaccount")
public class NewAccountController {

	@Autowired
	private CreateAccountService createAccountService;
	

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView NewAccountPage() {
		System.out.println("[newAccountController][NewAccountPage] Rendering New Account Page...");
		return new ModelAndView("createnewaccount", "NewAccount", new NewAccount());
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView CreatNewAccount(@Valid @ModelAttribute("NewAccount") NewAccount newAccount,
			BindingResult result) throws SQLException {

		System.out.println("[newAccountController][CreatNewAccountc] Creating new acco...");
		System.out.println(newAccount);

		if (result.hasErrors()) {
			
			//Redirecting to same page in case of error with error message
			System.out.println("[newAccountController][CreatNewAccountc] Page has error...");
			return new ModelAndView("createnewaccount", "NewAccount", new NewAccount());

		} else {
			//Calling service class in case of no error
			
			System.out.println("[newAccountController][CreatNewAccountc]  Passed Validation Calling Service method...");
			createAccountService.save(newAccount);

			return new ModelAndView("redirect:accountsviewall");
		}

	}
}