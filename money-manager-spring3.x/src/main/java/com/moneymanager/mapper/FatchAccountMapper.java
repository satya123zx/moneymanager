package com.moneymanager.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.moneymanager.bean.NewAccount;

public class FatchAccountMapper implements RowMapper<NewAccount> {

	@Override
	public NewAccount mapRow(ResultSet rs, int rowNum) throws SQLException {
		NewAccount account = new NewAccount();
		account.setAccountID(rs.getLong("mm_account_id"));
		account.setAccountName(rs.getString("mm_user_account_name"));
		account.setAccountNo(rs.getLong("mm_user_account_number"));
		account.setAccountType(rs.getString("mm_user_account_type"));
		account.setAccountBalance(rs.getDouble("mm_user_account_balance"));
		account.setAccountCreditLimit(rs.getDouble("mm_user_account_limit"));
		// mm_user_account_limit
		// TODO Auto-generated method stub
		return account;
	}

}
