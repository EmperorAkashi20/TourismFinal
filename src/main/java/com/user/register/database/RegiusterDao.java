package com.user.register.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;

import com.mysql.cj.Session;
import com.user.register.bean.RegisterBean;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;




public class RegiusterDao {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/UserTable";
	private String dbUserName = "root";
	private String dbPassword = "\"NewPassword@2018\"";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";	
	public static String encryptedpswd;
	
	public static byte[] getSHA(String input) throws NoSuchAlgorithmException 
    {  
        // Static getInstance method is called with hashing SHA  
        MessageDigest md = MessageDigest.getInstance("SHA-256");  
  
        // digest() method called  
        // to calculate message digest of an input  
        // and return array of byte 
        return md.digest(input.getBytes(StandardCharsets.UTF_8));  
    } 
    
    public static String toHexString(byte[] hash) 
    { 
        // Convert byte array into signum representation  
        BigInteger number = new BigInteger(1, hash);  
  
        // Convert message digest into hex value  
        StringBuilder hexString = new StringBuilder(number.toString(16));  
  
        // Pad with leading zeros 
        while (hexString.length() < 32)  
        {  
            hexString.insert(0, '0');  
        }  
  
        return hexString.toString();  
    } 
    
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
	
public boolean validate(RegisterBean registerBean) {
	
	Random rand = new Random();
	long drand = (long)((rand.nextDouble()*10000000000L));
	String userId = Long.toString(drand);
	//System.out.println(drand);
	
	try {
		encryptedpswd = toHexString(getSHA(registerBean.getPassword()));
	} catch (NoSuchAlgorithmException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		boolean status = false;
		
		String sql = "insert into UserDetails (userid, name, email, password, contact, address, nameOnCard, cardNumber, expiry)"+"values(?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		
		if(registerBean.getPassword().length()>8) {
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, userId);
				ps.setString(2, registerBean.getName());
				ps.setString(3, registerBean.getEmail());
				ps.setString(4, encryptedpswd);
				ps.setString(5, registerBean.getContact());
				ps.setString(6, "");
				ps.setString(7, "");
				ps.setString(8, "");
				ps.setString(9, "");
				
				ps.execute();
				status = true;
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			System.out.println("Password mismatch");
		}
		return status;
	}

}
