package com.moneymanager.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.moneymanager.bean.NewAccount;

public interface CreateAccountService {

	int save(NewAccount newAccount) throws SQLException;

	boolean update(NewAccount newAccount) throws SQLException;

	Map<String, List<NewAccount>> Accountlist(int UserID) throws SQLException;
	
	int DeleteAccount(String accountID) throws SQLException;
}
