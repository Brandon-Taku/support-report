package com.application.develop.reportapplication.report.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.application.develop.reportapplication.report.dao.TicketDAO;


@Entity(name = "supporttickets")
@Table(name = "supporttickets")
public class Ticket {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "supportticketid")
	private int supportticketid;
	
	@Column(name = "client")
	private String client;
	
	@Column(name = "week")
	private String week;
	
	@Column(name = "platform")
	private String platform;
	
	@Column(name = "bug")
	private String bug;
	
	@Column(name = "datecreated")
	private String datecreated;
	
	@Column(name = "datesolved")
	private String datesolved;
	
	@Column(name = "ticketlink")
	private String ticketlink;
	
	@Column(name = "category")
	private String category;
	
	@Column(name = "page")
	private String page;
	
	@Column(name = "primaryassignee")
	private String primaryassignee;
	
	@Column(name = "supportiveassignee")
	private String supportiveassignee;
	
	@Column(name = "user")
	private String user;
	
	@Column(name = "ticketstatus")
	private String ticketstatus;
	
	
	public Ticket() {
		
	}
	
	public Ticket(String client, String week, String platform, String bug, String datecreated, String datesolved,
			String ticketlink, String category, String page, String primaryassignee, String supportiveassignee,
			String user, String ticketstatus) {
		super();
		this.client = client;
		this.week = week;
		this.platform = platform;
		this.bug = bug;
		this.datecreated = datecreated;
		this.datesolved = datesolved;
		this.ticketlink = ticketlink;
		this.category = category;
		this.page = page;
		this.primaryassignee = primaryassignee;
		this.supportiveassignee = supportiveassignee;
		this.user = user;
		this.ticketstatus = ticketstatus;
	}

	public int getSupportticketid() {
		return supportticketid;
	}

	public void setSupportticketid(int supportticketid) {
		this.supportticketid = supportticketid;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getBug() {
		return bug;
	}

	public void setBug(String bug) {
		this.bug = bug;
	}

	public String getDatecreated() {
		return datecreated;
	}

	public void setDatecreated(String datecreated) {
		this.datecreated = datecreated;
	}

	public String getDatesolved() {
		return datesolved;
	}

	public void setDatesolved(String datesolved) {
		this.datesolved = datesolved;
	}

	public String getTicketlink() {
		return ticketlink;
	}

	public void setTicketlink(String ticketlink) {
		this.ticketlink = ticketlink;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getPrimaryassignee() {
		return primaryassignee;
	}

	public void setPrimaryassignee(String primaryassignee) {
		this.primaryassignee = primaryassignee;
	}

	public String getSupportiveassignee() {
		return supportiveassignee;
	}

	public void setSupportiveassignee(String supportiveassignee) {
		this.supportiveassignee = supportiveassignee;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getTicketstatus() {
		return ticketstatus;
	}

	public void setTicketstatus(String ticketstatus) {
		this.ticketstatus = ticketstatus;
	}

	
	
	

}
