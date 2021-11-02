package com.brs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PASSENGER")
public class Passenger {
	
	@Id
	@Column(name="pass_no")
	private int passNo;
	
	@Column(name="pass_name")
	private String passName;
	
	@Column(name="age")
	private int age;
	
	@Column(name="gender")
	private char gender;
	
	@Column(name="seat_no")
	private int seatNo;
	
	@Column(name="ticket_no")
	private int ticketNo;
	
	@Column(name="bus_no")
	private int busno;
	
	@Column(name="email")
	private String email;
	
	public Passenger() {
		super();
	}

	public Passenger(int passNo, String passName, int age, char gender, int seatNo, int ticketNo, int busno,
			String email) {
		super();
		this.passNo = passNo;
		this.passName = passName;
		this.age = age;
		this.gender = gender;
		this.seatNo = seatNo;
		this.ticketNo = ticketNo;
		this.busno = busno;
		this.email = email;
	}

	public int getPassNo() {
		return passNo;
	}

	public void setPassNo(int passNo) {
		this.passNo = passNo;
	}

	public String getPassName() {
		return passName;
	}

	public void setPassName(String passName) {
		this.passName = passName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public int getSeatNo() {
		return seatNo;
	}

	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}

	public int getTicketNo() {
		return ticketNo;
	}

	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}

	public int getBusno() {
		return busno;
	}

	public void setBusno(int busno) {
		this.busno = busno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Passenger [passNo=" + passNo + ", passName=" + passName + ", age=" + age + ", gender=" + gender
				+ ", seatNo=" + seatNo + ", ticketNo=" + ticketNo + ", busno=" + busno + ", email=" + email + "]";
	}
	
	
	
	

}
