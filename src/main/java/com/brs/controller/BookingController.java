package com.brs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.brs.entity.Booking;
import com.brs.entity.BusInfo;
import com.brs.entity.Customer;
import com.brs.entity.Passenger;
import com.brs.exception.DaoException;
import com.brs.services.BookingService;
import com.brs.services.BusInfoServices;
import com.brs.services.PassengerService;

@Controller
@SessionAttributes("list")
public class BookingController {

	private int ticketNo = 0;

	@Autowired
	private BusInfoServices busInfoServices;
	@Autowired
	private BookingService service;

	@Autowired
	private PassengerService service1;

	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public ModelAndView showRegister(ModelMap map, @RequestParam("id") int bus_id) {
		ModelAndView mav = new ModelAndView("Booking");
		mav.addObject("id", bus_id);
		BusInfo busInfo = busInfoServices.busById(bus_id);
		mav.addObject("busInfo", busInfo);
		mav.addObject("book", new Customer());
//	    map.put("email", email);
		return mav;
	}

	@RequestMapping(value = "/bookingProcess", method = RequestMethod.POST)
	public ModelAndView addUser(ModelMap map, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("book") Booking booking) {
		
		ModelAndView mv = new ModelAndView("success");
		
		try {
			int x = Integer.parseInt(request.getParameter("noOfPassengers"));
			int fare = Integer.parseInt(request.getParameter("cost"));
			booking.setCost(fare * x);
			 System.out.println(""+request.getParameter("bookingDate"));
			service.doBooking(booking);
			System.out.println("in add user booking " + booking.getBusno());
			ticketNo = booking.getTicketNo();
			System.out.println(ticketNo);

			for (int i = 0; i < x; i++) {
				Passenger passenger = new Passenger();
				passenger.setPassName(request.getParameter("passName" + i));
				passenger.setAge(Integer.parseInt(request.getParameter("age" + i)));
				char gender[] = request.getParameter("gender" + i).toCharArray();
				passenger.setGender(gender[0]);
				passenger.setBusno(booking.getBusno());
				passenger.setEmail(booking.getEmail());
				passenger.setSeatNo(20);
				service1.addPassenger(passenger, ticketNo);
			}

			BusInfo bus = service.viewBuses(booking.getBusno());
			System.out.println("" + bus.getBus_id() + "" + bus.getBus_name());
			mv.addObject("bus", bus);
			List<Passenger> pList = service1.showPassenger(ticketNo);
			System.out.println("passenger" + pList);
			mv.addObject("print", booking);
			mv.addObject("pList", pList);
		
		} catch (DaoException e) {
			e.printStackTrace();
		}
		
		return mv;

	}

	@RequestMapping(value = "/cancel", method = RequestMethod.GET)
	public ModelAndView cancelBook(@RequestParam("ticketNo") int ticketNo) {
		System.out.println(ticketNo);
		try {
			service.cancelBooking(ticketNo);
		} catch (DaoException e) {
			e.printStackTrace();
		}
		return new ModelAndView("home");
	}

}
