package com.brs.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import com.brs.entity.BusInfo;
import com.brs.entity.Customer;

@Repository
@Scope("singleton") // By default spring objects are singleton.
//@Transactional(propagation=Propagation.REQUIRED)
public class BusInfoDaoImpl implements BusInfoDao {
//
//	@PersistenceContext
//	private EntityManager manager;
//	@Override
//	public List<Bus_Info_Bean> getBusDetails() {
//		Query qry = manager.createNamedQuery("searchBus");
//		return qry.getResultList();
//	}
//	
//	

	@PersistenceContext
	private EntityManager manager;

	@Override
	public List<BusInfo> getBusDetails() {
//		String qry = "SELECT * FROM BUS_DETAILS";
//		List<Map<String, Object>> mapEmpList = jt.queryForList(qry,new Object[] {});
//		List<Bus_Info_Bean> contList = new ArrayList<Bus_Info_Bean>();
//		System.out.println("ASDFGASDFGH");
//		for(Map<String, Object> mapRec : mapEmpList) {
//			System.out.println("ASDFGASDFGHQQWESDFGB");
//			BigDecimal busid=(BigDecimal)mapRec.get("BUS_ID");
//			String btype = (String) mapRec.get("BUS_TYPE");
//			String src = (String) mapRec.get("SOURCE");
//			String dest= (String) mapRec.get("DESTINATION");
//			BigDecimal cap=(BigDecimal)mapRec.get("CAPACITY");
//			
//			
//			System.out.println("saadfgb");
//			//BigDecimal Phone = (BigDecimal) mapRec.get("PHONE");
//			Bus_Info_Bean cont = new Bus_Info_Bean(busid.intValue(),btype,cap.intValue(),src,dest);
//			
//			
//			//cont.setBus_info_bean(mapEmpList);
//			//System.out.println("ASDFG");
//			contList.add(cont);
//		//return null;		
//	}
		return null;
	}

	@Override
	public List<BusInfo> busFetch(BusInfo busInfo) {
		String src = busInfo.getSource();
		String dest = busInfo.getDestination();
		Query qry = manager.createQuery("FROM BusInfo WHERE SOURCE=:src AND DESTINATION=:dest");
		qry.setParameter("src", src);
		qry.setParameter("dest", dest);
		return qry.getResultList();
	}

	@Override
	public BusInfo bookBus(int id) {
		BusInfo busById = manager.find(BusInfo.class, id);
		return busById;
	}

	@Override
	public boolean isvalidUser(String username, String password) {
		return username.equalsIgnoreCase("admin") && password.equals("admin");
	}

	@Override
	public List<Customer> showProfile(String email) {
		Query qry = manager.createQuery("FROM Customer WHERE email=:email");
		qry.setParameter("email", email);
		return qry.getResultList();
	}

}
