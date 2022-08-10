package com.application.develop.reportapplication.report.utils;

import com.application.develop.reportapplication.report.dao.TicketDAO;
import com.application.develop.reportapplication.report.exceptions.MissingRequiredFieldsException;
import com.application.develop.reportapplication.report.model.Ticket;
import com.application.develop.reportapplication.report.response.ErrorMessages;



public class TicketUtils {
	
	TicketDAO ticketDao = null;
	
	public void validateRequiredFields(Ticket ticket) throws MissingRequiredFieldsException {
		
		if(ticket.getClient() == null || ticket.getClient().isEmpty() ||
				ticket.getWeek() == null || ticket.getWeek().isEmpty() ||
				ticket.getPlatform() == null || ticket.getPlatform().isEmpty() ||
				ticket.getBug() == null || ticket.getBug().isEmpty() ||
				ticket.getDatecreated() == null || ticket.getDatecreated().isEmpty() ||
				ticket.getDatesolved() == null || ticket.getDatesolved().isEmpty() ||
				ticket.getTicketlink() == null || ticket.getTicketlink().isEmpty() ||
				ticket.getCategory() == null || ticket.getCategory().isEmpty() ||
				ticket.getPage() == null || ticket.getPage().isEmpty() ||
				ticket.getPrimaryassignee() == null || ticket.getPrimaryassignee().isEmpty() ||
				ticket.getSupportiveassignee() == null || ticket.getSupportiveassignee().isEmpty() ||
				ticket.getUser() == null || ticket.getUser().isEmpty() ||
				ticket.getTicketstatus() == null || ticket.getTicketstatus().isEmpty())
				
		{
					
					throw new MissingRequiredFieldsException(ErrorMessages.MISSING_REQUIRED_FIELD.getErrorMessage());
	
		}
		
		
	}

	/*jpublic TicketUtils getTicketByTicketLink(String ticketlink) {

		if(ticketlink == null || ticketlink.isEmpty()) {
			
			return ticketDao; 
		}
		
		try {
			this.ticketDao.getTicketByLink(ticketlink);
		}
		
	}
	*/






}
