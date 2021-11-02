package com.brs.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.brs.entity.Booking;
import com.brs.entity.Customer;
import com.brs.exception.DaoException;
import com.brs.services.BookingService;
import com.brs.services.BusInfoServices;
import com.brs.services.PassengerService;

@Controller
public class NavigateController {
	
	@Resource
	private BusInfoServices busInfoServices;
	
	@Autowired
	private BookingService service;
	
	@Autowired
	private PassengerService service1;
	
	@RequestMapping("/home")
	public String homePage() {
		System.out.println("Going to home page");
//		model.put("email", email);
		return "home";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView showUserProfile(HttpSession session) {
		System.out.println("showing profile post method...");
		String email = (String) session.getAttribute("email");
		System.out.println("Email"+ email);
		List<Customer> customer = null;
		ModelAndView mAndV = null;
		customer=busInfoServices.showProfile(email);
		System.out.println("cust->"+customer);
//		model.put("email", email);
		mAndV = new ModelAndView();
		// Pass-on this data to JSP
		mAndV.setViewName("Profile");
		mAndV.addObject("list", customer);
		return mAndV;
	}
	
	@RequestMapping("/bookingHistory")
	public ModelAndView showProfile(HttpSession session) {
			String email = (String) session.getAttribute("email");
			System.out.println("Going to booking history page");
			System.out.println("Email"+email);
			List<Booking> booking = null;
			ModelAndView mAndV = null;
			try {
				booking=service.showHistory(email);
			}
			catch(DaoException e) {
				System.out.println("Navigate Controller->" + e.getMessage());
			}
			
//			for (Booking objects : booking) {
//				System.out.println("cust"+objects[0].toString());	
//			}
			//busList = busInfoServices.busFetch(bus_info_bean);
			// System.out.println(empList);
			mAndV = new ModelAndView();
			// Pass-on this data to JSP
			mAndV.setViewName("BookingHistory");
			mAndV.addObject("list", booking);
//			model.put("email", email);
			return mAndV;
	}
	
	@RequestMapping("/changePassword")
	public String changePasswordPage() {
		System.out.println("Going to change password page");
		return "resetPassword";
	}
	
	@RequestMapping(value = "/changePass", method = RequestMethod.POST)
	public ModelAndView toChangePass(ModelMap map, @RequestParam("oldp") String oldPassword, @RequestParam("newp") String newPassword,
			HttpSession session) {
		boolean x;
		String email = (String) session.getAttribute("email");
		System.out.println("change password post method...");
		System.out.println("Email"+email);
		ModelAndView mAndV = null;
		try {
			x = service1.changePass(oldPassword,newPassword,email);
			System.out.println(x);
			if(x) {
				System.out.println("Password changed");
				mAndV = new ModelAndView("home");
			} else {
				map.put("invalid","Incorrect E-mail or Old Password");
				mAndV = new ModelAndView("resetPassword");
			}
		} catch(DaoException e){
			System.err.println("Password cant be changed!");
			mAndV = new ModelAndView("error");
		}
		return mAndV;
	}
	
	@RequestMapping(value = "/resetForgetPassword", method = RequestMethod.GET)
	public String toResetPass() {
		return "resetForgetPassword";
	}
	
	@RequestMapping(value = "/resetForgetPassword", method = RequestMethod.POST)
	public ModelAndView toResetPass(@RequestParam("password") String newPassword,
			@RequestParam("email") String email) {
		boolean x;
		System.out.println("Reset password post method...");
		System.out.println("Email" + email);
		ModelAndView mAndV = null;
		try {
			x = service1.forgetPass(newPassword,email);
			System.out.println(x);
			if(x) {
				System.out.println("Password changed");
				mAndV = new ModelAndView("login");
			} else {
				mAndV = new ModelAndView("resetForgetPassword");
			}
		} catch(DaoException e){
			System.err.println("Password cant be changed!");
			mAndV = new ModelAndView("error");
		}
		return mAndV;
	}
	
}
