package com.moneymanager.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.bean.NewAccount;
import com.moneymanager.service.CreateAccountService;

@Controller
public class RedirectViewAccountControler {

	@Autowired
	private CreateAccountService createAccountService;
	//Extra method to handle if anyone click the money manage icon in the any page
	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public ModelAndView RedirectIndexToViewAllAccountPage() throws SQLException {
		System.out.println("[RedirectViewAccountControler][RedirectViewAllAccountPage] Rendering All Account Page...");
		Map<String, List<NewAccount>> accounts = createAccountService.Accountlist(1);
		return new ModelAndView("accountsviewall", "accounts", accounts);
	}
	//method to redirect to All Account view
	@RequestMapping(value = "/accountsviewall", method = RequestMethod.GET)
	public ModelAndView RedirectViewAllAccountPage() throws SQLException {
		System.out.println("[RedirectViewAccountControler][RedirectViewAllAccountPage] Rendering All Account Page...");
		Map<String, List<NewAccount>> accounts = createAccountService.Accountlist(1);
		ModelAndView model = new ModelAndView("accountsviewall");
		model.addObject("accounts", accounts);
		model.addObject("updateAccountDetails", new NewAccount());
		return model;

	}

}
