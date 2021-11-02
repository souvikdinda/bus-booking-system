package com.brs.dao;

import java.sql.ResultSet;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.brs.entity.Booking;
import com.brs.entity.BusInfo;
import com.brs.entity.Customer;
import com.brs.entity.Passenger;
import com.brs.exception.DaoException;

@Repository
@Scope("singleton")
@Transactional(propagation=Propagation.REQUIRED)
public class BookingDaoImpl implements BookingDao {

	@PersistenceContext
	private EntityManager manager;

	private Customer customer = new Customer();

	
	 @Autowired private CustomerDao cdao;
	 


	public Integer createNextTicketNo() {

		Query qry = manager.createQuery("select max(ticketNo) from Booking");
		Integer no = (Integer) qry.getSingleResult();
		// System.out.println("MAX ID : "+no);
		return no + 1;
	}


	public Booking doBooking(Booking booking) throws DaoException {

		Integer no = createNextTicketNo();
		booking.setTicketNo(no);
		manager.persist(booking);
		customer = manager.find(Customer.class, booking.getEmail());
		double bal = customer.getWallet() - booking.getCost();
		customer.setWallet(bal);
		manager.persist(customer);
		return booking;
	}


	public Booking viewBooking(int ticketNo) throws DaoException {
		Booking booking = manager.find(Booking.class, ticketNo);

		// System.out.println(booking);
		return booking;
	}


	public boolean cancelBooking(int ticketNo) throws DaoException {
		
		Query query = manager.createQuery("from Passenger where ticketNo=:ticketNo");
		query.setParameter("ticketNo", ticketNo);
		
		Booking booking=manager.find(Booking.class, ticketNo);
		String email=booking.getEmail();
		double refundAmt=booking.getCost();
		cdao.refundInWallet(email, refundAmt);
		manager.remove(booking);
//		
//		double refundAmt=booking.getCost();
//		System.out.println("dao ticket no"+ticketNo);
//		pdao.removePassenger(ticketNo);
//		
//		cdao.refundInWallet(email, refundAmt);
//		
//		manager.remove(booking);

		List<Passenger> bookings = query.getResultList();
		for (Passenger passenger : bookings) {
			System.out.println("" + passenger);
		}

		for (Passenger book : bookings) {
			manager.remove(book);
		}
		
		return true;
	}


	public List<Booking> showHistory(String email) throws DaoException {
		// TODO Auto-generated method stub
		System.out.println("email:-"+email);
		Query qry = manager.createQuery("FROM Booking WHERE email=:email");
		 qry.setParameter("email", email);
		 
		return qry.getResultList();
	}
	
	public BusInfo viewBuses(int bus) throws DaoException {
		BusInfo busInfo = manager.find(BusInfo.class, bus);
		return busInfo;
	}

}
