package com.user.register.bean;

public class LoginBean {
	
	static String email;
	static String password;
	public static String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		LoginBean.email = email;
	}
	public static String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		LoginBean.password = password;
	}
	
	
}
