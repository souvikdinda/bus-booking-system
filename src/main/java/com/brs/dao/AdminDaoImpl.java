package com.brs.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.brs.entity.BusInfo;
import com.brs.entity.Customer;
import com.brs.exception.DaoException;

@Repository
@Scope("singleton")
@Transactional(propagation=Propagation.REQUIRED)

public class AdminDaoImpl  implements AdminDao {

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public boolean isvalidUser(String email, String password) {
		
		return email.equalsIgnoreCase("admin@mail.com") && password.equals("admin");
	}
	
	public BusInfo addBus(BusInfo busInfo) throws DaoException {
		// TODO Auto-generated method stub
	manager.persist(busInfo);
		return busInfo;
	}


public boolean deleteBus(int busId) throws DaoException {
	// TODO Auto-generated method stub
	BusInfo busInfo=manager.find(BusInfo.class, busId);
	System.out.println(busInfo);
	int id = busInfo.getBus_id();
	manager.remove(busInfo);
	
	return true;
}

public List<Customer> showCust() throws DaoException {
	// TODO Auto-generated method stub
	Query qry=manager.createQuery("from Customer where email NOT IN (SELECT email From Booking )");
	System.out.println(qry.getResultList());
	return qry.getResultList();
}

public List<BusInfo> showAllBuses() throws DaoException {
	// TODO Auto-generated method stub
	Query qry = manager.createQuery("from BusInfo");
	return qry.getResultList();
}
}