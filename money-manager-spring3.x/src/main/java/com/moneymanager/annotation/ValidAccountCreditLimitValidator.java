package com.moneymanager.annotation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidAccountCreditLimitValidator implements ConstraintValidator<IsValidAccountCreditLimit, String> {

	@Override
	public void initialize(IsValidAccountCreditLimit constraintAnnotation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isValid(String accountCreditLimit, ConstraintValidatorContext context) {
		if(accountCreditLimit.matches("Cards")){
			
			
		}
		
		
		
		return false;
	}

}
