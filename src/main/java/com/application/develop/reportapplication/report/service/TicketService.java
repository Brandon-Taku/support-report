package com.application.develop.reportapplication.report.service;

import java.util.List;

import com.application.develop.reportapplication.report.dao.TicketDAO;
import com.application.develop.reportapplication.report.model.Ticket;
import com.application.develop.reportapplication.report.response.ErrorMessages;
import com.application.develop.reportapplication.report.utils.TicketUtils;


public class TicketService {
	
	TicketDAO ticketDAO = new TicketDAO();
	TicketUtils ticketUtils = new TicketUtils();
	

	public List<Ticket> getTickets() {

		List<Ticket> ticket_list = ticketDAO.getTickets();
		
		return ticket_list;
	}

	public void addTicket(Ticket ticket) {
		
		ticketUtils.validateRequiredFields(ticket);
		
		//TicketUtils existingTicket = ticketUtils.getTicketByTicketLink(ticket.getTicketlink());
		
		//if(existingTicket != null) {
	//		throw new CouldNotCreateRecordException(ErrorMessages.RECORD_ALREADY_EXISTS.name());
	//	}
		
		ticketDAO.addTicket(ticket);
		
	}


	public List<Ticket> getWaitingOnCustomerTickets() {

		List<Ticket> ticket_list = ticketDAO.getWaitingOnCustomerTickets();
		
		return ticket_list;
	}

	public List<Ticket> getSolvedTickets() {
		
		List<Ticket> ticket_list = ticketDAO.getSolvedTickets();
		
		return ticket_list;
	}

	public List<Ticket> getOnHoldTickets() {

		List<Ticket> ticket_list = ticketDAO.getOnHoldTickets();
		
		return ticket_list;
	}

	public List<Ticket> getAwaitingAuthorizationTickets() {
		
		List<Ticket> ticket_list = ticketDAO.getAwaitingAuthorizationTickets();
		
		return ticket_list;
	}

	public List<Ticket> getInvestigatingTickets() {

		List<Ticket> ticket_list = ticketDAO.getInvestigatingTickets();
		
		return ticket_list;
	}

	public List<Ticket> getInProgressTickets() {

		List<Ticket> ticket_list = ticketDAO.getInProgressTickets();
		
		return ticket_list;
	}

	public List<Ticket> getClosedTickets() {

		List<Ticket> ticket_list = ticketDAO.getClosedTickets();
		
		return ticket_list;
	}

	public Long getWaitingOnCustomerTotal() {
	
		Long tickettotal = ticketDAO.getWaitingOnCustomerTotal();
		
		return tickettotal;
	}

	public void updateTicket(Ticket updatedTicket) {
		
		ticketDAO.updateTicket(updatedTicket);
		
	}

}
