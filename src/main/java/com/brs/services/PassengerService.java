package com.brs.services;

import java.util.List;

import com.brs.entity.Passenger;
import com.brs.exception.DaoException;

public interface PassengerService {
	
	public Passenger addPassenger(Passenger passenger, int ticketNo) throws DaoException;
	public boolean changePass(String oldPass , String newPass , String Email) throws DaoException;
	public boolean forgetPass(String newPass , String Email) throws DaoException;
	public List<Passenger> showPassenger(int ticketNo) throws DaoException;
	
}
