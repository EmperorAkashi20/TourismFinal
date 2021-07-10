package com.addtocart.database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import com.addtocart.bean.AddToCartBean;

public class AddToCartDao {
	private String dbUrl = "jdbc:mysql://localhost:3306/UserTable";
	private String dbUserName = "root";
	private String dbPassword = "\"NewPassword@2018\"";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	public static String finalamounts;

    
    public static String print(String input) {
    	System.out.println(input);
    	return input;
    }
	
	
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
	
	public boolean validate(AddToCartBean addToCartBean) {
		
		Random rand = new Random();
		long drand = (long)((rand.nextDouble()*10000000000L));
		String bookingId = Long.toString(drand);
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		
		String sql = "insert into bookingdetails (userid, packageid, numberofpeople, fromdate, todate, transport, bookingid, totalDays, price, roomtype, destination, passportnumber, finalprice)" +"values(?,?,?,?,?,?,?,?,?,?,?,?,?)";

		
		PreparedStatement ps;
		
		try {
			ps = con.prepareStatement(sql);
			
			double passengers = Double.parseDouble(addToCartBean.getNumberOfPeople());
			double price = Double.parseDouble(addToCartBean.getPrice());
			
			double amount = passengers * price;
			String amounts = Double.toString(amount);
			
			AddToCartDao.finalamounts = amounts;
			
			String fromd = addToCartBean.getFromdate();
			int nofdays = Integer.parseInt(addToCartBean.getTotalDays());
			System.out.println(fromd);
			System.out.println(nofdays);

			
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			try {
				c.setTime(sdf.parse(fromd));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // Using today's date
			c.add(Calendar.DATE, nofdays); // Adding 5 days
			String output = sdf.format(c.getTime());
			System.out.println(output);
			
			ps.setString(1, addToCartBean.getUserId());
			ps.setString(2, addToCartBean.getPackageId());
			ps.setString(3, addToCartBean.getNumberOfPeople());
			ps.setString(4, addToCartBean.getFromdate());
			ps.setString(5, output);
			ps.setString(6, "Flight");
			ps.setString(7, bookingId);
			ps.setString(8, addToCartBean.getTotalDays());
			ps.setString(9, addToCartBean.getPrice());
			ps.setString(10, addToCartBean.getRoomtype());
			ps.setString(11, addToCartBean.getDestination());
			ps.setString(12, addToCartBean.getPassportNumber());
			ps.setString(13, amounts);
			
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
