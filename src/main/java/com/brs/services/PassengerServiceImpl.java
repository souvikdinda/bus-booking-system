package com.brs.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.brs.entity.Passenger;
import com.brs.dao.PassengerDao;
import com.brs.exception.DaoException;


@Service("passengerService")
@Scope("singleton")
@Transactional(propagation=Propagation.REQUIRES_NEW)

public class PassengerServiceImpl implements PassengerService {
	
	@Autowired
	PassengerDao dao;

	public Passenger addPassenger(Passenger passenger, int ticketNo) throws DaoException {
		return dao.addPassenger(passenger, ticketNo);
	}
	public boolean changePass(String oldPass, String newPass, String email) throws DaoException {
		return dao.changePassword(oldPass,newPass,email);
		}
	
	public List<Passenger> showPassenger(int ticketNo) throws DaoException {
		 return dao.showPassenger(ticketNo);
	}
	@Override
	public boolean forgetPass(String newPass, String email) throws DaoException {
		return dao.forgetPassword(newPass,email);
	}


}
