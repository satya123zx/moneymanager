package com.moneymanager.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.moneymanager.annotation.*;
import javax.validation.Constraint;
import javax.validation.Payload;

	@Documented
	@Constraint(validatedBy = ValidAccountCreditLimitValidator.class)
	@Target({ElementType.FIELD})
	@Retention(RetentionPolicy.RUNTIME)
public @interface IsValidAccountCreditLimit {
	
		String message() default "Please enter a valid Credit Limit";
		Class<?>[] groups() default {};
		Class<? extends Payload>[] payload() default {};
 }
