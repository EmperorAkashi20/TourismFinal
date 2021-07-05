package com.addtocart.bean;

public class AddToCartBean {
	private String packageId;
	private String userId;
	private String numberOfPeople;
	private String fromdate;
	private String toDate;
	private String transport;
	private String bookingId;
	private String totalDays;
	private String price;
	private String roomtype;
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	private String destination;
	
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getPackageId() {
		return packageId;
	}
	public void setPackageId(String packageId) {
		this.packageId = packageId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getNumberOfPeople() {
		return numberOfPeople;
	}
	public void setNumberOfPeople(String numberOfPeople) {
		this.numberOfPeople = numberOfPeople;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getToDate() {
		return toDate;
	}
	public void setToDate(String toDate) {
		this.toDate = toDate;
	}
	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
	public String getTotalDays() {
		return totalDays;
	}
	public void setTotalDays(String totalDays) {
		this.totalDays = totalDays;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
