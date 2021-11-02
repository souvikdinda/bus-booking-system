package com.brs.tests;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.brs.services.CustomerServices;

public class RegistrationTest {
	
	@Resource
	private CustomerServices registrationServices;

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("bus-core.xml");
		CustomerServices register = ctx.getBean("registrationServices", CustomerServices.class);
		
//		Register registerUser = new Register("Neha", "Parab", "neha@mail.com", "123456", "98987878");
//		register.addUser(registerUser);
		
		System.out.println("Condition 1 check");
		if(register.validateUser("neha@mail.com", "123456")) {
			System.out.println("Correct");
		}
		
		System.out.println("Condition 2 check");
		if(!register.validateUser("nehaaaaaa", "1456")) {
			System.out.println("Inorrect");
		}
		
	}
}
