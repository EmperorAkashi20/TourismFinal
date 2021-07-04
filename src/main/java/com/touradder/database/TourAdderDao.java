package com.touradder.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.touradder.bean.TourAdderBean;

public class TourAdderDao {
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
	
	public boolean validate(TourAdderBean tourAdderBean) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		
		String sql = "insert into packages (packageid, title, amount, description, numberofdays, hotels, image,publishdate)" +"values(?,?,?,?,?,?,?,?)";
;
		
		PreparedStatement ps;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, TourAdderBean.getPackageid());
			ps.setString(2, TourAdderBean.getDestination());
			ps.setString(3, TourAdderBean.getPrice());
			ps.setString(4, TourAdderBean.getDescription());
			ps.setString(5, TourAdderBean.getNumberOfDays());
			ps.setString(6, TourAdderBean.getNumberOfHotels());
			ps.setString(7, TourAdderBean.getImagePath());
			ps.setString(8, TourAdderBean.getPublishDate());
			
			
			System.out.println(ps);			
			ps.execute();
			status = true;
			System.out.println(status);
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
}
