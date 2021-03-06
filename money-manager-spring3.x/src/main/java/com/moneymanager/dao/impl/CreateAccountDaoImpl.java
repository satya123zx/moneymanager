package com.moneymanager.dao.impl;

import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.moneymanager.bean.NewAccount;
import com.moneymanager.dao.CreateAccountDao;
import com.moneymanager.mapper.FatchAccountMapper;

@Repository
public class CreateAccountDaoImpl implements CreateAccountDao {

	@Autowired
	private DataSource dataSource;

	@Override
	public int save(final NewAccount newAccount) {
		System.out.println("[CreateAccountDaoImp][save] Saving new account info...");

		// SQL QUERY to insert data into DB there MM_USER_ID and MM_USER_ACCOUNT_ICON is hard coded
		// and will be implemented later
		String sql = "INSERT INTO mm_user_accounts " + "(mm_user_id, mm_user_account_name, mm_user_account_number, "
				+ " mm_user_account_type, mm_user_account_balance,mm_user_account_limit,mm_user_account_icon) "
				+ " VALUES (?, ?, ?, ?, ?, ?, ?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		int row = jdbcTemplate.update(sql,
				new Object[] { 1, newAccount.getAccountName(), newAccount.getAccountNo(),
						newAccount.getAccountType(), newAccount.getAccountBalance(),
						newAccount.getAccountCreditLimit(),"axis.png"});

		System.out.println("[CreateAccountDaoImp][save] New account save status : ");
		return row;
	}

	@Override
	public int update(NewAccount newAccount) {
		//String sql = ""
	/*	UPDATE `moneymanager`.`mm_user_accounts` 
		SET `mm_user_account_name`='icic',
		 `mm_user_account_number`='4566',
		 `mm_user_account_balance`='25255.00'
		 WHERE `mm_account_id`='9';*/
		String sql = "UPDATE mm_user_accounts SET "
				+ "mm_user_account_name = ?,"
				+ "mm_user_account_number = ?,"
				+ "mm_user_account_balance = ?,"
				+ "mm_user_account_type = ?,"
				+ "mm_user_account_limit = ? "
				+ "Where mm_account_id = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		System.out.println("[CreateAccountDaoImp][Accountlist] New account save status : " + sql);
		return jdbcTemplate.update(sql, new Object[]{
				newAccount.getAccountName(),
				newAccount.getAccountNo(),
				newAccount.getAccountBalance(),
				newAccount.getAccountType(),
				newAccount.getAccountCreditLimit(),
				newAccount.getAccountID()		
		});
		
		
	}

	@Override
	public List<NewAccount> Accountlist(int UserID) throws SQLException {
		String sql = "SELECT mm_account_id,mm_user_account_name,mm_user_account_number,mm_user_account_type,"
				+ "mm_user_account_balance,mm_user_account_limit FROM moneymanager.mm_user_accounts"
				+ " where mm_user_id = " + UserID;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		System.out.println("[CreateAccountDaoImp][Accountlist] New account save status : " + sql);
		return jdbcTemplate.query(sql, new FatchAccountMapper());

	}

	@Override
	public int DeleteAccount(String accountID) throws SQLException {
		String sql ="DELETE FROM mm_user_accounts WHERE mm_account_id = "+accountID; 
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		return jdbcTemplate.update(sql);
	}

}