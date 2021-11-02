package com.brs.dao;

import java.util.List;

import com.brs.entity.BusInfo;
import com.brs.entity.Customer;
import com.brs.exception.DaoException;

public interface AdminDao {
	
	public boolean isvalidUser(String email, String password) ;
	public BusInfo addBus(BusInfo busInfo) throws DaoException;
	public boolean deleteBus(int busId) throws DaoException;
	public List<Customer> showCust() throws DaoException;
	public List<BusInfo> showAllBuses() throws DaoException;
}

