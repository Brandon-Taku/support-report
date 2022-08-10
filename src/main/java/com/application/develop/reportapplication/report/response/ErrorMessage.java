package com.application.develop.reportapplication.report.response;

public class ErrorMessage {
	
	private String errorMessage;
	private String errorMessagekey;
	private String href; //This is called HATEOUS when we return links
	

	public ErrorMessage() { //
	
	}

	public ErrorMessage(String errorMessage, String errorMessagekey, String href) {
		this.errorMessage = errorMessage;
		this.errorMessagekey = errorMessagekey;
		this.href = href;
	}

	public String getErrorMessage() {
		return errorMessage;
	}
	
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	
	public String getErrorMessagekey() {
		return errorMessagekey;
	}
	
	public void setErrorMessagekey(String errorMessagekey) {
		this.errorMessagekey = errorMessagekey;
	}
	
	public String getHref() {
		return href;
	}
	
	public void setHref(String href) {
		this.href = href;
	}

}
