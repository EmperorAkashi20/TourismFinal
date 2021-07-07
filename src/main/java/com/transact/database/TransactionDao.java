package com.transact.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import com.transact.bean.TrasactionBean;
import com.user.register.bean.LoginBean;

public class TransactionDao {
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
	
	public boolean validate(TrasactionBean transactionbean) {
		
		Random rand = new Random();
		long drand = (long)((rand.nextDouble()*10000000000L));
		String tranId = Long.toString(drand);
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		
		String sql = "insert into transactiondetails(userid,cardtype,cardnumber,amountpaid,destination,passportnumber,traveldate,transactionid)"+"values(?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, transactionbean.getUserId());
			ps.setString(2, "VISA");
			ps.setString(3, transactionbean.getCardnumber());
			ps.setString(4, transactionbean.getAmountpaid());
			ps.setString(5, transactionbean.getDestination());
			ps.setString(6, transactionbean.getPassportnumber());
			ps.setString(7, transactionbean.getTravelDate());
			ps.setString(8, tranId);
			
			ps.execute();
			status = true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	public boolean billingaddress(LoginBean loginbean) {
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		
		String sql = "UPDATE UserDetails SET name = ?, email = ?, address = ?, nameoncard =?, cardnumber = ?, expm = ?, city =?, state = ?, zip = ?, expy = ?, cvv = ? WHERE userId = ?";

		
		PreparedStatement ps;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, loginbean.getName());
			ps.setString(2, loginbean.getEmail());
			ps.setString(3, loginbean.getAddress());
			ps.setString(4, loginbean.getName());
			ps.setString(5, loginbean.getCnum());
			ps.setString(6, loginbean.getExpm());
			ps.setString(7, loginbean.getCity());
			ps.setString(8, loginbean.getState());
			ps.setString(9, loginbean.getZip());
			ps.setString(10, loginbean.getExpy());
			ps.setString(11, loginbean.getCvv());
			ps.setString(12, loginbean.getUserId());
			
			ps.execute();
			status = true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
}
