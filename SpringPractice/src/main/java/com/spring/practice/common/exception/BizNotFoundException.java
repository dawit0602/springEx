package com.spring.practice.common.exception;

public class BizNotFoundException extends BizException{
	
	public BizNotFoundException(String message, String errCode) {
		super(message, errCode);
	}
}
