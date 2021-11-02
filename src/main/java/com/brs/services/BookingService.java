package com.brs.services;

import java.util.List;

import com.brs.entity.Booking;
import com.brs.entity.BusInfo;
import com.brs.exception.DaoException;
public interface BookingService {
	public Booking doBooking(Booking booking) throws DaoException;
	public Booking viewBooking(int ticketNo) throws DaoException;
	public boolean cancelBooking(int ticketNo) throws DaoException;
	public List<Booking> showHistory(String email) throws DaoException;
	public BusInfo viewBuses(int bus) throws DaoException;
}
