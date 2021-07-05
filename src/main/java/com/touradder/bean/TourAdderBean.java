package com.touradder.bean;

public class TourAdderBean {
	
	static String packageid;
	static String destination;
	static String description;
	static String shortdesc;
	static String price;
	static String numberOfDays;
	static String numberOfHotels;
	static String publishDate;
	static String image1fors;
	static String image2fors;
	static String image3fors;
	
	public static String getImage1fors() {
		return image1fors;
	}
	public void setImage1fors(String image1fors) {
		TourAdderBean.image1fors = image1fors;
	}
	public static String getImage2fors() {
		return image2fors;
	}
	public void setImage2fors(String image2fors) {
		TourAdderBean.image2fors = image2fors;
	}
	public static String getImage3fors() {
		return image3fors;
	}
	public void setImage3fors(String image3fors) {
		TourAdderBean.image3fors = image3fors;
	}
	public static String getShortdesc() {
		return shortdesc;
	}
	public void setShortdesc(String shortdesc) {
		TourAdderBean.shortdesc = shortdesc;
	}
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
