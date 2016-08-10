package com.moneymanager.dao;

import java.sql.SQLException;
import java.util.List;
import com.moneymanager.bean.NewAccount;

public interface CreateAccountDao {
	//insert value in the DB
	int save(NewAccount newAccount) throws SQLException;
	//Update value in the DB to be implemented 
	int update(NewAccount newAccount) throws SQLException;
	//Retrive data from DB
	List<NewAccount> Accountlist(int UserID) throws SQLException;

}