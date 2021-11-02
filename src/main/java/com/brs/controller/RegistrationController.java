package com.brs.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.brs.entity.Customer;
import com.brs.services.AdminServices;
import com.brs.services.CustomerServices;

@Controller
@SessionAttributes("email")
public class RegistrationController {

	@Resource
	private AdminServices adminServices;
	
	@Resource
	private CustomerServices registrationService;

	@RequestMapping("/register")
	public String registerPage() {
		System.out.println("Going to login page");
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String welcomePage(ModelMap map, HttpServletRequest request) {
		
		System.out.println("Controller->Setting details"+request.getParameter("firstName"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String contactNo = request.getParameter("contactNo");
		String dateOfBirth = request.getParameter("dateOfBirth");
		double wallet = 0;
		String gender = request.getParameter("gender");
		Customer customer = new Customer(firstName, lastName, email, password, contactNo,
			dateOfBirth, gender, wallet);
		System.out.println("Controller --> Adding User");
		registrationService.addUser(customer);
		System.out.println("Controller --> Added User");
		map.put("success", "Registration Successful");
		return "login";
	}
	
	@RequestMapping( value = "/login",method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping( value = "/login", method = RequestMethod.POST)
	public ModelAndView validateUser(HttpSession session ,ModelMap map, @RequestParam("email") String email, @RequestParam("password") String password) {
		System.out.println("in BRS_Con of login"+email);
		ModelAndView mav = new ModelAndView();
		if(adminServices.isvalidUser(email, password)) {
			mav.setViewName("admin");
		}else {
		if(!registrationService.validateUser(email, password)) {
			map.put("invalid", "Invalid Credentials");
			mav.setViewName("login");
		} else {
			session.setAttribute("email", email);
//			map.put("email", email);
			mav.setViewName("home");
		}
		}
		return mav;
	}
	
	@RequestMapping(value = "/forgetPassword")
	public String forgetPassword() {
		return "forgetPassword";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value="/resetPassword")
	public String resetPassword() {
		System.out.println("in reset pass");
		return "home";
	}
	
}
