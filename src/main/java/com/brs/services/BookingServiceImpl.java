package com.brs.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.brs.entity.Booking;
import com.brs.entity.BusInfo;
import com.brs.dao.BookingDao;
import com.brs.exception.DaoException;

@Service("bookingService")
@Scope("singleton")
@Transactional(propagation=Propagation.REQUIRES_NEW)
public class BookingServiceImpl implements BookingService {
	@Autowired
	BookingDao dao;

public Booking viewBooking(int ticketNo) throws DaoException {
	return dao.viewBooking(ticketNo);
}


	public Booking doBooking(Booking booking) throws DaoException {
		return dao.doBooking(booking);
	}


	public boolean cancelBooking(int ticketNo) throws DaoException {
		// TODO Auto-generated method stub
		return dao.cancelBooking(ticketNo);
	}


	public List<Booking> showHistory(String email) throws DaoException {
		// TODO Auto-generated method stub
		return dao.showHistory(email);
	}
	
	public BusInfo viewBuses(int bus) throws DaoException {
		// TODO Auto-generated method stub
		return dao.viewBuses(bus);
	}
}
