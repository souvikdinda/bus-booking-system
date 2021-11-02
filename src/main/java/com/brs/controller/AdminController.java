package com.brs.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.brs.entity.BusInfo;
import com.brs.entity.Customer;
import com.brs.exception.DaoException;
import com.brs.services.AdminServices;
import com.brs.services.BusInfoServices;

@Controller
public class AdminController {

	@Resource
	private BusInfoServices bis;
	
	@Resource
	private AdminServices adminServices;
	
	@RequestMapping(value = "/adminHome", method = RequestMethod.GET)
	public String admin() {
		return "admin";
	}
	@RequestMapping(value = "/addBus", method = RequestMethod.GET)
	public String addBus() {
		return "addBus";
	}
	
	@RequestMapping(value = "/addBus", method = RequestMethod.POST)
	public String addBusDetails(HttpServletRequest req) {
		String strBusId = req.getParameter("busId");
		String strbusType=req.getParameter("busType");
		String strbusName=req.getParameter("busName");
		String strEmail=req.getParameter("email");
		String strCapacity=req.getParameter("cap");
		String strSource=req.getParameter("src");
		String strDestination=req.getParameter("dest");
		String strFare=req.getParameter("fare");
		BusInfo busInfo=new BusInfo();
		busInfo.setBus_id(Integer.parseInt(strBusId));
		busInfo.setBus_type(strbusType);
		busInfo.setBus_name(strbusName);
		busInfo.setCapacity(Integer.parseInt(strCapacity));
		busInfo.setSource(strSource);
		busInfo.setDestination(strDestination);
		busInfo.setFare(Integer.parseInt(strFare));
		try {
			adminServices.addBus(busInfo);
		} catch (DaoException e) {
			e.printStackTrace();
		}
		return "success";
	}

	
	@RequestMapping(value = "/deleteBus", method = RequestMethod.GET)
	public String deleteBus() {
		return "deleteBus";
	}
	
	@RequestMapping(value = "/deleteBus", method = RequestMethod.POST)
	public String deleteBusDetails(HttpServletRequest request, HttpServletResponse response)
	{
		int busId=Integer.parseInt(request.getParameter("busId"));
		System.out.println(busId);
		try 
		{
			adminServices.deleteBus(busId);
		} 
		catch (DaoException e)
		{
			e.printStackTrace();
		}
		return "success";
	}
	//To check which Customer Registered but never booked
	@RequestMapping(value = "/custBooking", method = RequestMethod.GET)
	public ModelAndView showCustomer() {
		ModelAndView mAndV = new ModelAndView("show");
		List<Customer> cust = null;
		try {
			cust = adminServices.showCust();
			System.out.println(cust);
			
			// Pass-on this data to JSP
			mAndV.addObject("cust",cust);
		} catch (DaoException e) {
			e.printStackTrace();
		}
		return mAndV;
	} 
	
	@RequestMapping("/showAll")
	public ModelAndView showAllBuses(){
		List<BusInfo> busInfo = null;
		ModelAndView mAndV = null;
		try {
			busInfo = adminServices.showAllBuses();
			//System.out.println(empList);
			mAndV = new ModelAndView();
			// Pass-on this data to JSP
			mAndV.setViewName("showAllBuses");
			mAndV.addObject("list", busInfo);
		} catch (DaoException e) {
			e.printStackTrace();
		}
		return mAndV;
	} 
	
}
