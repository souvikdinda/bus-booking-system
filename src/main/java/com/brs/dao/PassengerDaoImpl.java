package com.brs.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.brs.entity.Customer;
import com.brs.entity.Passenger;
import com.brs.exception.DaoException;

@Repository
@Scope("singleton")
@Transactional(propagation = Propagation.REQUIRED)

public class PassengerDaoImpl implements PassengerDao {

	@PersistenceContext
	private EntityManager manager;

	public Integer createNextPassengerNo() {

		Query qry = manager.createQuery("select max(passNo) from Passenger");
		Integer no = (Integer) qry.getSingleResult();
		// System.out.println("MAX ID : "+no);
		return no + 1;
	}

	public Passenger addPassenger(Passenger passenger, int ticketNo) throws DaoException {
		// TODO Auto-generated method stub
		Integer no = createNextPassengerNo();
		passenger.setPassNo(no);

		// Query qry1=manager.createQuery("select ticketNo from Booking where ");
		// int ticketNo=(Integer)qry1.

		passenger.setTicketNo(ticketNo);
		manager.persist(passenger);

		return passenger;
	}

	public boolean removePassenger(int ticketNo) throws DaoException {
		Passenger passenger = manager.find(Passenger.class, ticketNo);
		System.out.println("tkt remove"+ticketNo);
		manager.remove(passenger);
		return true;
	}
	
	public boolean changePassword(String oldPass, String newPass, String email) throws DaoException {
		Customer c = manager.find(Customer.class, email);
		System.out.println("password" + c.getPassword());
		boolean flag = false;
		String pass = new String(c.getPassword());
		if (pass.equals(oldPass)) {

			c.setPassword(newPass);
			System.out.println("new pass" + c.getPassword());
			manager.persist(c);
			System.out.println("dfghujkl");
			return true;
		} else {
			return false;
		}
	}
	public List<Passenger> showPassenger(int ticketNo) throws DaoException {
		Query query=manager.createQuery("from Passenger where ticketNo=:tNo");
		query.setParameter("tNo", ticketNo);
		List<Passenger> pList=query.getResultList();
		return pList;
	}

	@Override
	public boolean forgetPassword(String newPass, String email) {
		Customer c = manager.find(Customer.class, email);
		System.out.println("password" + c.getPassword());
//		String pass = new String(c.getPassword());
		c.setPassword(newPass);
		System.out.println("new pass" + c.getPassword());
		manager.persist(c);
		System.out.println("Password changed succesfully");
		return true;
	}

}
