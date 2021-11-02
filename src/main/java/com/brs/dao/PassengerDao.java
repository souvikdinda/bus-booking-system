package com.brs.dao;

import java.util.List;

import com.brs.entity.Passenger;
import com.brs.exception.DaoException;

public interface PassengerDao {
	
	public Passenger addPassenger(Passenger passenger, int ticketNo) throws DaoException;
	public boolean removePassenger(int ticketNo) throws DaoException;
	public boolean changePassword(String oldPass , String newPass , String Email) throws DaoException;
	public List<Passenger> showPassenger(int ticketNo) throws DaoException;
	public boolean forgetPassword(String newPass, String email);

}
