package com.brs.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.brs.dao.CustomerDao;
import com.brs.entity.Customer;

@Service("registrationServices")
@Scope("singleton")
public class CustomerServicesImpl  implements CustomerServices {

	@Autowired
	private CustomerDao registrationDao;

	@Override
	public Customer addUser(Customer customer) {
		return registrationDao.addUser(customer);
	}

	@Override
	public boolean validateUser(String email, String password) {
		return registrationDao.validateUser(email, password);
	}
	
}
