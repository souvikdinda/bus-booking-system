package com.brs.dao;

import com.brs.entity.Customer;

public interface CustomerDao {

	public Customer addUser(Customer customer);
	
	public boolean validateUser(String email, String password);

	public Customer refundInWallet(String email, double refundAmt);
}
