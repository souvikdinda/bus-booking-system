package com.brs.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.brs.entity.BusInfo;
import com.brs.entity.Customer;
import com.brs.dao.BusInfoDao;

@Service("busInfoServices")
//@Scope("singleton")
@Transactional(propagation = Propagation.REQUIRES_NEW)
public class BusInfoServicesImpl implements BusInfoServices {

	@Resource
	private BusInfoDao busInfoDao;

	@Override
	public List<BusInfo> getBusDetails() {
		return busInfoDao.getBusDetails();
	}

	@Override
	public List<BusInfo> busFetch(BusInfo busInfo) {

		return busInfoDao.busFetch(busInfo);
	}

	@Override
	public boolean isvalidUser(String username, String password) {
		return busInfoDao.isvalidUser(username, password);
	}
	
	@Override
	public BusInfo busById(int id) {
		return busInfoDao.bookBus(id);
	}

	@Override
	public List<Customer> showProfile(String email) {
		return busInfoDao.showProfile(email);
	}

}
