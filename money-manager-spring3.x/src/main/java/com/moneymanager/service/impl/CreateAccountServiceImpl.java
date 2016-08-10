package com.moneymanager.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moneymanager.bean.NewAccount;
import com.moneymanager.dao.CreateAccountDao;
import com.moneymanager.service.CreateAccountService;

@Service
public class CreateAccountServiceImpl implements CreateAccountService {

	@Autowired
	CreateAccountDao createAccountDao;

	@Override
	public int save(NewAccount newAccount) throws SQLException {
		System.out.println("[CreateAccountServiceImpl][save] Rendering ServiceImpl method...");
		int row = createAccountDao.save(newAccount);
		return row;
	}

	@Override
	public boolean update(NewAccount newAccount) throws SQLException {
		if(createAccountDao.update(newAccount)>=1){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public Map<String, List<NewAccount>> Accountlist(int UserID) throws SQLException {
		// System.out.println("[CreateAccountServiceImpl][Accountlist()]
		// Rendering ServiceImpl method...");
		List<NewAccount> accounts = createAccountDao.Accountlist(UserID);
		System.out.println("[CreateAccountDaoImp][save] New account save status : " + accounts);
		List<NewAccount> loanAccounts = new ArrayList<NewAccount>();
		List<NewAccount> savingAccount = new ArrayList<NewAccount>();
		List<NewAccount> creditAccount = new ArrayList<NewAccount>();
		Map<String, List<NewAccount>> accountsMap = new HashMap<String, List<NewAccount>>();

		// Account Sorting
		for (int i = 0; i < accounts.size(); i++) {
			
			if (accounts.get(i).getAccountType().equals("Loans")) {
				
				loanAccounts.add(accounts.get(i));
				
			} else if (accounts.get(i).getAccountType().equals("Accounts")) {
				
				savingAccount.add(accounts.get(i));
				
			} else if (accounts.get(i).getAccountType().equals("Cards")) {
				creditAccount.add(accounts.get(i));
			}
			// credit //accountsMap.put("loan",accounts.get(i));
		}
		accountsMap.put("loanAccount", loanAccounts);
		accountsMap.put("savingsAccount", savingAccount);
		accountsMap.put("creditAccount", creditAccount);
		Set<String> key = accountsMap.keySet();
		Iterator<String> iterator = key.iterator();
	/*	while (iterator.hasNext()) {
			String accountType = iterator.next();

			System.out.println("----------------------" + accountType + "------------------------");
			System.out.println("|------------" + accountsMap.get(accountType) + "---------------|");
			System.out.println("-----------------End of first Account Type-------------------");
		}*/

		return accountsMap;
	}

	@Override
	public int DeleteAccount(String accountID) throws SQLException {
		System.out.println("[CreateAccountDaoImp][DeleteAccount]  account Deleted : " + accountID);
		return createAccountDao.DeleteAccount(accountID);
	}

}
