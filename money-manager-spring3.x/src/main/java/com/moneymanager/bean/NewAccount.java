package com.moneymanager.bean;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

public class NewAccount {
	
	@NotBlank(message = "*Account Name field is mandatory.")
	@Pattern(regexp="^[a-zA-Z ]+$",message="*Please input only alphabet.")
	private String accountName;
	
	@NotNull(message="*Account No entered is not valid.Please input only numeric value.")
	@NumberFormat(style = Style.NUMBER) @Min(1)
	private Long accountNo;
	
	@NotBlank(message = "*Account Type field is mandatory.Please select any one option")
	private String accountType;

	@Min(value=1,message="*Account No entered is not valid.Please input only numeric value.")
	@Digits(integer=10,fraction=2,message="*Account Balance entered is not valid.Please input only numeric value.")
	private Double accountBalance;
	
	//@NotNull(message="Credit Limit field is mandatory.")
	private Double accountCreditLimit;
	
	private String accountIcon;
	
	private Long accountID;
	

	/**
	 * @return the accountID
	 */
	public Long getAccountID() {
		return accountID;
	}


	/**
	 * @param accountID the accountID to set
	 */
	public void setAccountID(Long accountID) {
		this.accountID = accountID;
	}


	public String getAccountName() {
		return accountName;
	}


	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}


	public Long getAccountNo() {
		return accountNo;
	}


	public void setAccountNo(Long accountNo) {
		this.accountNo = accountNo;
	}


	public String getAccountType() {
		return accountType;
	}


	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}


	public Double getAccountBalance() {
		return accountBalance;
	}


	public void setAccountBalance(Double accountBalance) {
		this.accountBalance = accountBalance;
	}


	public Double getAccountCreditLimit() {
		return accountCreditLimit;
	}


	public void setAccountCreditLimit(Double accountCreditLimit) {
		this.accountCreditLimit = accountCreditLimit;
	}
	
	
	/**
	 * @return the accountIcon
	 */
	public String getAccountIcon() {
		return accountIcon;
	}


	/**
	 * @param accountIcon the accountIcon to set
	 */
	public void setAccountIcon(String accountIcon) {
		this.accountIcon = accountIcon;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "NewAccount [\n" + 
				    "\taccountID=" + accountID + ",\n" + 
					"\taccountName=" + accountName + ",\n" + 
					"\taccountNo=" + accountNo + ",\n" + 
					"\taccountType=" + accountType + ",\n" + 
					"\taccountBalance=" + accountBalance + 
					"\taccountCreditLimit=" + accountCreditLimit +
				"\n]";
	}
}