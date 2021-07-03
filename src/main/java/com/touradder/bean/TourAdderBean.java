package com.touradder.bean;

public class TourAdderBean {
	
	static String packageid;
	static String destination;
	static String description;
	static String price;
	static String numberOfDays;
	static String numberOfHotels;
	static String publishDate;
	static String imagePath;

	public static String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		TourAdderBean.imagePath = imagePath;
	}
	public static String getPackageid() {
		return packageid;
	}
	public void setPackageid(String packageid) {
		TourAdderBean.packageid = packageid;
	}
	public static String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		TourAdderBean.destination = destination;
	}
	public static String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		TourAdderBean.description = description;
	}
	public static String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		TourAdderBean.price = price;
	}
	public static String getNumberOfDays() {
		return numberOfDays;
	}
	public void setNumberOfDays(String numberOfDays) {
		TourAdderBean.numberOfDays = numberOfDays;
	}
	public static String getNumberOfHotels() {
		return numberOfHotels;
	}
	public void setNumberOfHotels(String numberOfHotels) {
		TourAdderBean.numberOfHotels = numberOfHotels;
	}
	public static String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		TourAdderBean.publishDate = publishDate;
	}
}
