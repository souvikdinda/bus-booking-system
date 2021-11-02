package com.brs.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.brs.dao.AdminDao;
import com.brs.entity.BusInfo;
import com.brs.entity.Customer;
import com.brs.exception.DaoException;

@Service("adminServices")
//@Scope("singleton")
@Transactional(propagation = Propagation.REQUIRES_NEW)
public class AdminServicesImpl implements AdminServices {

	@Resource
	private AdminDao adminDao;
	
	@Override
	public boolean isvalidUser(String email, String password) {
		return adminDao.isvalidUser(email, password);
	}
	
	public BusInfo addBus(BusInfo busInfo) throws DaoException {
		// TODO Auto-generated method stub
		return adminDao.addBus(busInfo);
	}

	public boolean deleteBus(int busId) throws DaoException {
		// TODO Auto-generated method stub
		return adminDao.deleteBus(busId);
	}
	
	public List<Customer> showCust() throws DaoException {
		// TODO Auto-generated method stub
		return adminDao.showCust();
	}
	
	public List<BusInfo> showAllBuses() throws DaoException {
		// TODO Auto-generated method stub
		return adminDao.showAllBuses();
	}

}
