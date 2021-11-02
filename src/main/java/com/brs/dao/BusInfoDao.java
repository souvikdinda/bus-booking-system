package com.brs.dao;

import java.util.List;

import com.brs.entity.BusInfo;
import com.brs.entity.Customer;

public interface BusInfoDao {
	public List<BusInfo> getBusDetails();
	public List<BusInfo> busFetch(BusInfo busInfo);
	public boolean isvalidUser(String username, String password);
	public BusInfo bookBus(int id);
	public List<Customer> showProfile(String email);
	
}
