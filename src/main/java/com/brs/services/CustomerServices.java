package com.brs.services;

import com.brs.entity.Customer;

public interface CustomerServices {

	public Customer addUser(Customer customer);
	
	public boolean validateUser(String email, String password);
}
