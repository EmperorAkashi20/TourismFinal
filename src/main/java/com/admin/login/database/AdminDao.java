package com.admin.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.adminlogin.bean.AdminBean;

public class AdminDao {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/UserTable";
	private String dbUserName = "root";
	private String dbPassword = "\"NewPassword@2018\"";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
public boolean validate(AdminBean adminBean) {
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		
		String sql = "select * from admintable where username = ? and password = ?";
		
		PreparedStatement ps;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, AdminBean.getUsername());
			ps.setString(2, AdminBean.getPassword());
			
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
}
