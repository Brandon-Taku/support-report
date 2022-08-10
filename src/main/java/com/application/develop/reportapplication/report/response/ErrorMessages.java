package com.application.develop.reportapplication.report.response;

public enum ErrorMessages {
	
	MISSING_REQUIRED_FIELD("Missing required field. Please check for required fields"),
	RECORD_ALREADY_EXISTS("Record already exists!"),
	INTERNAL_SERVER_ERROR("Internal server error");
	
	private String errorMessage;
	
	ErrorMessages(String errorMessage){
		this.errorMessage = errorMessage;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
