package com.application.develop.reportapplication.reportapplication;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.json.JSONArray;
import org.json.JSONObject;

import com.application.develop.reportapplication.report.model.Ticket;
import com.application.develop.reportapplication.report.service.TicketService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@Path("/support")
public class ReportResource {
	
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ticket> getTask() {
		
		List<Ticket> ticket_list = new TicketService().getTickets();
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket_list);
		
		System.out.println("JSONObject : " + JSONObject);
		
		return ticket_list;
		
	}
	
	@GET
	@Path("/waitingOnCustomer/total")
	@Produces(MediaType.APPLICATION_JSON)
	public String totalTickets() {
		
		Long ticket_total = new TicketService().getWaitingOnCustomerTotal();
		
		String message;
		
		JSONArray array = new JSONArray();
		JSONObject item = new JSONObject();
		
		item.put("ticketcount", ticket_total);

		array.put(item);
		
		message = array.toString();
		
		return message;
		
	}
	
	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/ticket/{supportticketid}")
	public Response updateTicket(@PathParam(value="supportticketid") int supportticketid, Ticket updatedTicket) {
		updatedTicket.setSupportticketid(supportticketid);
		
		new TicketService().updateTicket(updatedTicket);
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(updatedTicket);
		
		System.out.println("JSONObject : " + JSONObject);
		 
		return Response.status(Response.Status.OK).entity(updatedTicket)
			      .type(MediaType.APPLICATION_JSON)
			      .build();
	}
	
	@GET
	@Path("/waitingOnCustomer/tickets")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ticket> getWaitingOnCustomerTickets() {
		
		List<Ticket> ticket_list = new TicketService().getWaitingOnCustomerTickets();
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket_list);
		
		System.out.println("JSONObject : " + JSONObject);
		
		return ticket_list;
		
	}
	
	@GET
	@Path("/inProgress/tickets")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ticket> getInProgressTickets() {
		
		List<Ticket> ticket_list = new TicketService().getInProgressTickets();
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket_list);
		
		System.out.println("JSONObject : " + JSONObject);
		
		return ticket_list;
		
	}
	
	@GET
	@Path("/investigating/tickets")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ticket> getInvestigatingTickets() {
		
		List<Ticket> ticket_list = new TicketService().getInvestigatingTickets();
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket_list);
		
		System.out.println("JSONObject : " + JSONObject);
		
		return ticket_list;
		
	}
	
	@GET
	@Path("/awaitingAuthorization/tickets")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ticket> getAwaitingAuthorizationTickets() {
		
		List<Ticket> ticket_list = new TicketService().getAwaitingAuthorizationTickets();
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket_list);
		
		System.out.println("JSONObject : " + JSONObject);
		
		return ticket_list;
		
	}
	
	@GET
	@Path("/onHold/tickets")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ticket> getOnHoldTickets() {
		
		List<Ticket> ticket_list = new TicketService().getOnHoldTickets();
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket_list);
		
		System.out.println("JSONObject : " + JSONObject);
		
		return ticket_list;
		
	}
	
	@GET
	@Path("/solved/tickets")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ticket> getSolvedTickets() {
		
		List<Ticket> ticket_list = new TicketService().getSolvedTickets();
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket_list);
		
		System.out.println("JSONObject : " + JSONObject);
		
		return ticket_list;   //send through through the tickets - for half of all.
		
	}
	
	@GET
	@Path("/closed/tickets")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Ticket> getClosedTickets() {
		
		List<Ticket> ticket_list = new TicketService().getClosedTickets();
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket_list);
		
		System.out.println("JSONObject : " + JSONObject);
		
		return ticket_list;
		
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/add")
	public Response addTicket(Ticket ticket) {
		
		System.out.println("Ticket : " + ticket.getDatecreated());
		
		GsonBuilder gsonBuilder = new GsonBuilder();
		
		Gson gson = gsonBuilder.create();
		
		String JSONObject = gson.toJson(ticket);
		
		System.out.println("JSONObject : " + JSONObject);
		
		new TicketService().addTicket(ticket);
		
	    return Response.status(Response.Status.OK).entity(ticket)
	      .type(MediaType.APPLICATION_JSON)
	      .build();
		
	}
	
	
	
	@GET
	@Path("/dashboard")
	@Produces({MediaType.TEXT_HTML})
	public InputStream viewHome() throws FileNotFoundException
	{
	   File f = new File("C:\\Users\\Brendon-Taku\\eclipse-projects\\reportapplication\\src\\main\\webapp\\tickets.jsp");
	   
	   return new FileInputStream(f);
	}
	
	@GET
	@Path("/waitingOnCustomer")
	@Produces({MediaType.TEXT_HTML})
	public InputStream waitingOnCustomer() throws FileNotFoundException
	{
	   File f = new File("C:\\Users\\Brendon-Taku\\eclipse-projects\\reportapplication\\src\\main\\webapp\\waitingOnCustomer.jsp");
	   
	   return new FileInputStream(f);
	}
	
	@GET
	@Path("/inProgress")
	@Produces({MediaType.TEXT_HTML})
	public InputStream inProgress() throws FileNotFoundException
	{
	   File f = new File("C:\\Users\\Brendon-Taku\\eclipse-projects\\reportapplication\\src\\main\\webapp\\inProgress.jsp");
	   
	   return new FileInputStream(f);
	}
	
	@GET
	@Path("/investigating")
	@Produces({MediaType.TEXT_HTML})
	public InputStream investigating() throws FileNotFoundException
	{
	   File f = new File("C:\\Users\\Brendon-Taku\\eclipse-projects\\reportapplication\\src\\main\\webapp\\investigating.jsp");
	   
	   return new FileInputStream(f);
	}
	
	@GET
	@Path("/onHold")
	@Produces({MediaType.TEXT_HTML})
	public InputStream onHold() throws FileNotFoundException
	{
	   File f = new File("C:\\Users\\Brendon-Taku\\eclipse-projects\\reportapplication\\src\\main\\webapp\\onHold.jsp");
	   
	   return new FileInputStream(f);
	}
	
	@GET
	@Path("/awaitingAuthorization")
	@Produces({MediaType.TEXT_HTML})
	public InputStream awaitingAuthorization() throws FileNotFoundException
	{
	   File f = new File("C:\\Users\\Brendon-Taku\\eclipse-projects\\reportapplication\\src\\main\\webapp\\awaitingAuthorization.jsp");
	   
	   return new FileInputStream(f);
	}
	
	@GET
	@Path("/tracking")
	@Produces({MediaType.TEXT_HTML})
	public InputStream supporttracking() throws FileNotFoundException
	{
	   File f = new File("C:\\Users\\Brendon-Taku\\eclipse-projects\\reportapplication\\src\\main\\webapp\\supporttracking.jsp");
	   
	   return new FileInputStream(f);
	}
	
	
	
	

}
