package com.brs.entity;

import java.math.BigInteger;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="BOOKING")
public class Booking {
	
	@Id
	@Column(name="ticket_no")
	private int ticketNo;
	
	@Column(name="email")
	private String email;
	
	@Column(name="no_of_pass")
	private int noOfPassengers;
	
	@Column(name="cost")
	private double cost;
	
	@Column(name="journey_date")
	private String journeyDate;
	
	@Column(name="busno")
	private int busno;
	
	@Column(name="booking_date")
	private String bookingDate;
	
	@Column(name="card_no")
	private BigInteger cardNo;
	
	
	
	public Booking() {
		super();
	}
	
	
	public Booking(int ticketNo, String email, int noOfPassengers, double cost, String journeyDate, int busno,
			String bookingDate, BigInteger cardNo) {
		super();
		this.ticketNo = ticketNo;
		this.email = email;
		this.noOfPassengers = noOfPassengers;
		this.cost = cost;
		this.journeyDate = journeyDate;
		this.busno = busno;
		this.bookingDate = bookingDate;
		this.cardNo = cardNo;
	}

	

	public String getJourneyDate() {
		return journeyDate;
	}


	public void setJourneyDate(String journeyDate) {
		this.journeyDate = journeyDate;
	}


	public String getBookingDate() {
		return bookingDate;
	}


	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}


	public int getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getNoOfPassengers() {
		return noOfPassengers;
	}
	public void setNoOfPassengers(int noOfPassengers) {
		this.noOfPassengers = noOfPassengers;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	
	public int getBusno() {
		return busno;
	}
	public void setBusno(int busno) {
		this.busno = busno;
	}
	
	public BigInteger getCardNo() {
		return cardNo;
	}
	public void setCardNo(BigInteger cardNo) {
		this.cardNo = cardNo;
	}


	@Override
	public String toString() {
		return "Booking [ticketNo=" + ticketNo + ", email=" + email + ", noOfPassengers=" + noOfPassengers + ", cost="
				+ cost + ", journeyDate=" + journeyDate + ", busno=" + busno + ", bookingDate=" + bookingDate
				+ ", cardNo=" + cardNo + "]";
	}
	
	

}
