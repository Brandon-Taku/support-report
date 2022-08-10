package com.application.develop.reportapplication.report.exceptions;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;

import com.application.develop.reportapplication.report.response.ErrorMessage;
import com.application.develop.reportapplication.report.response.ErrorMessages;


public class MissingRequiredFieldsExceptionMapper implements ExceptionMapper<MissingRequiredFieldsException>{

	@Override
	public Response toResponse(MissingRequiredFieldsException exception) {
		
		ErrorMessage errorMessage = new ErrorMessage(exception.getMessage(), ErrorMessages.MISSING_REQUIRED_FIELD.name(), "http://applicationdeveloper.com");
		
		return Response.status(Response.Status.BAD_REQUEST).entity(errorMessage).type(MediaType.APPLICATION_JSON).build();
	}

}
