package com.adminlogin.bean;

public class AdminBean {
	
	static String username;
	static String password;
	public static String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		AdminBean.username = username;
	}
	public static String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		AdminBean.password = password;
	}
	
	
}
