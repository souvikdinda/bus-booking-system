package com.brs.controller;

import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.brs.entity.BusInfo;
import com.brs.services.BusInfoServices;

@Controller
public class BusInfoController {

	@Resource
	private BusInfoServices busInfoServices;

//	Bus Search
	@RequestMapping(value = "/buslist", method = RequestMethod.POST)
	public ModelAndView showBus(ModelMap model, BusInfo busInfo, HttpSession session, @RequestParam("onwardDate") String onwardDate) {

		System.out.println("LoginController.showLoginPage GET method...");
		List<BusInfo> busList = null;
		ModelAndView mAndV = null;
		session.setAttribute("onwardDate", onwardDate);
		busList = busInfoServices.busFetch(busInfo);
		if(!busList.isEmpty()) {
			mAndV = new ModelAndView();
			mAndV.setViewName("busSearch");
			mAndV.addObject("list", busList);
//			model.put("email", email);
		} else {
			mAndV = new ModelAndView();
			mAndV.setViewName("home");
//			model.put("email", email);
			model.put("noBus","Bus not available");
		}
		return mAndV;
	}
	
	@RequestMapping(value = "/unauthorised", method = RequestMethod.POST)
	public ModelAndView unauthorised(ModelMap model, BusInfo busInfo) {
		
		System.out.println("LoginController.showLoginPage GET method...");
		List<BusInfo> busList = null;
		ModelAndView mAndV = null;
		busList = busInfoServices.busFetch(busInfo);
		if(!busList.isEmpty()) {
			mAndV = new ModelAndView();
			mAndV.setViewName("unauthorised");
			mAndV.addObject("list", busList);
		} else {
			mAndV = new ModelAndView();
			mAndV.setViewName("index");
			model.put("noBus","Bus not available");
		}
		return mAndV;
	}
	
	@RequestMapping("/book")
	public ModelAndView bookBus(@RequestParam("id") int bus_id) {
		ModelAndView mAndV = new ModelAndView("Book");
		BusInfo bus;
			bus = busInfoServices.busById(bus_id);
			System.out.println(bus);
			
			// Pass-on this data to JSP
			mAndV.addObject("emp",bus);
		
		return mAndV;
	} 
	

}
