package com.application.develop.reportapplication.report.exceptions;

public class MissingRequiredFieldsException extends RuntimeException{
	
	private static final long serialVersionUID = 0;
	
	
	public MissingRequiredFieldsException(String message) { //a constructor that takes in a message
		super(message);
	}

}
