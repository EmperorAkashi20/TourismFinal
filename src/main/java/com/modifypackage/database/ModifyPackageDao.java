package com.modifypackage.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.modifypackage.bean.ModifyPackageBean;

public class ModifyPackageDao {
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
	
	public boolean modifypackage(ModifyPackageBean modify) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		
		String sql = "UPDATE packages SET title = ?, amount = ?, numberofdays = ?, numberofhotels = ? WHERE packageid = ?";

		
		PreparedStatement ps;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, modify.getTitle());
			ps.setString(2, modify.getAmount());
			ps.setString(3, modify.getNumberofdays());
			ps.setString(4, modify.getNumberofhotels());
			ps.setString(5, modify.getPackageid());
			
			ps.execute();
			status = true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
}
