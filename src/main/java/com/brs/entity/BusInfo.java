package com.brs.entity;

			
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BUS_DETAILS")
public class BusInfo {

	int bus_id;
	String bus_type;
	String bus_name;
	int capacity;
	String source;
	String destination;
	int fare;

	public BusInfo() {
		super();
	}

	public BusInfo(int bus_id, String bus_type,String bus_name, int capacity, String source, String destination, int fare) {
		super();
		this.bus_id = bus_id;
		this.bus_type = bus_type;
		this.bus_name = bus_name;
		this.capacity = capacity;
		this.source = source;
		this.destination = destination;
		this.fare = fare;
		
	}

	@Id
	@Column(name = "BUS_ID")
	public int getBus_id() {
		return bus_id;
	}

	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}

	@Column(name = "BUS_TYPE")
	public String getBus_type() {
		return bus_type;
	}

	public void setBus_type(String bus_type) {
		this.bus_type = bus_type;
	}
	

	public String getBus_name() {
		return bus_name;
	}

	public void setBus_name(String bus_name) {
		this.bus_name = bus_name;
	}

	@Column(name = "CAPACITY")
	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	@Column(name = "SOURCE")
	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	@Column(name = "DESTINATION")
	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	@Column(name = "FARE")
	public int getFare() {
		return fare;
	}

	public void setFare(int fare) {
		this.fare = fare;
	}

	@Override
	public String toString() {
		return "Bus_Info_Bean [bus_id=" + bus_id + ", bus_type=" + bus_type + ", bus_name=" + bus_name + ", capacity="
				+ capacity + ", source=" + source + ", destination=" + destination + ", fare=" + fare + "]";
	}

	

}
