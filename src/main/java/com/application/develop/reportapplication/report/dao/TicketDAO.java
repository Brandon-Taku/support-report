package com.application.develop.reportapplication.report.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.application.develop.reportapplication.report.model.Ticket;


public class TicketDAO {

	
		SessionFactory factory = new Configuration()
				.configure("hibernate.cfg.xml")
				.addAnnotatedClass(Ticket.class)
				.buildSessionFactory();

		
		
		public List<Ticket> getTickets() {
		
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		
		List<Ticket> ticket_list = session.createQuery("from supporttickets").getResultList();
		
		return ticket_list;
		
	   }


		public List<Ticket> getWaitingOnCustomerTickets() {
		
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		
		List<Ticket> ticket_list = session.createQuery("from supporttickets where ticketstatus='Waiting On Customer'").getResultList();
		
		return ticket_list;
		
	   }
		
		
		public List<Ticket> getAssignedTickets() {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			List<Ticket> ticket_list = session.createQuery("from supporttickets where ticketstatus='Assigned'").getResultList();
			
			return ticket_list;
			
		 }
		
		public List<Ticket> getOnHoldTickets() {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			List<Ticket> ticket_list = session.createQuery("from supporttickets where ticketstatus='On Hold'").getResultList();
			
			return ticket_list;
			
		 }
		
		public List<Ticket> getInvestigatingTickets() {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			List<Ticket> ticket_list = session.createQuery("from supporttickets where ticketstatus='Investigating'").getResultList();
			
			return ticket_list;
			
		 }
		
        public List<Ticket> getInProgressTickets() {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			List<Ticket> ticket_list = session.createQuery("from supporttickets where ticketstatus='In Progress'").getResultList();
			
			return ticket_list;
			
		 }
        
        
        public List<Ticket> getAwaitingAuthorizationTickets() {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			List<Ticket> ticket_list = session.createQuery("from supporttickets where ticketstatus='Awaiting Authorization'").getResultList();
			
			return ticket_list;
			
		 }
        
        public List<Ticket> getSolvedTickets() {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			List<Ticket> ticket_list = session.createQuery("from supporttickets where ticketstatus='Solved'").getResultList();
			
			return ticket_list;
			
		 }
        
        public List<Ticket> getClosedTickets() {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			List<Ticket> ticket_list = session.createQuery("from supporttickets where ticketstatus='Closed'").getResultList();
			
			return ticket_list;
			
		 }

		public void addTicket(Ticket ticket) {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();

			session.save(ticket);
			session.getTransaction().commit();
			
			session.close();
		}

	/*	public TicketDAO getTicketByTicketLink(String ticketlink) {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			TicketDAO ticket_list = (TicketDAO) session.createQuery("select ticketlink from supporttickets where ticketlink='" + ticketlink + "'").getResultList();
			
			return ticket_list;
		}*/


		public Long getWaitingOnCustomerTotal() {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			Long ticket_count = (Long) session.createQuery("select COUNT(*) from supporttickets where ticketstatus='Waiting On Customer'").uniqueResult();
			
			return ticket_count;
		}


		public void updateTicket(Ticket updatedTicket) {
			
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			
			int id = updatedTicket.getSupportticketid();
			Ticket ticket = session.get(Ticket.class, id);
			
			ticket = updatedTicket;
			
			session.clear();
			session.update(updatedTicket);
			
			session.getTransaction().commit();
			
			session.close();
		}


		
		
}
