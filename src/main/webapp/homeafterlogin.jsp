<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>

<%
	String dbUrl = "jdbc:mysql://localhost:3306/UserTable";
	String dbUserName = "root";
	String dbPassword = "\"NewPassword@2018\"";
	String dbDriver = "com.mysql.cj.jdbc.Driver";
	try {
		Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	Statement statement1 = null;
	ResultSet resultSet1 = null;
%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>Holidaypoint.com</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
* {
  box-sizing: border-box;
}

body {
 font-family: Arial, Helvetica, sans-serif;
  margin: 2;
  background:""
}

/* Header/logo Title */
.header {
 padding: 80px;
  text-align: center;
  background:;
  background-image: url("images/blur.jpg.jpg");
  color: black;
}

/* Increase the font size of the heading */
.header h1 {
  font-size: 40px;
}

/* Sticky navbar - toggles between relative and fixed, depending on the scroll position. It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed). The sticky value is not supported in IE or Edge 15 and earlier versions. However, for these versions the navbar will inherit default position */
.navbar {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Style the button */
.button {
  border: 2px white;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  background-color: #008CBA;
  border-radius: 25px;
}

.button:hover {
  background-color:green;
  color: white;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Active/current link */
.navbar a.active {
  background-color: #666;
  color: white;
}

.sidebar-image-gallery { width: 210px; }

/* Main column */
.main {   
  -ms-flex: 70%; /* IE10 */
  flex: 70%;
  background-color: white;
  padding: 30px;
}

/* Fake image, just for this example */
.fakeimg {
  background-color: white;
  padding: 10px;
  border:;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button:hover {
  opacity: 0.8;
} */

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

 */
.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 40%;
  padding:20px;
  /* height: 500px; */ /* Could be more or less, depending on screen size */
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
 -webkit-animation: animatezoom 0.6s;
 animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
 from {-webkit-transform: scale(0)}
to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
 from {transform: scale(0)}
to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
 span.psw {
   display: block;
     float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */

@media screen and (max-width: 400px) {
 .navbar a {
    float: none;
    width: 100%;
  }
}

* {box-sizing: border-box;}
/* Full-width input fields */
input[type=text], input[type=password], input[type=number] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

/* Add a background color when the inputs get focus 

input[type=text]:focus, input[type=password], input[type=number]:focus {
  background-color: #ddd;
  outline: none;
}
</style>
</head>

<body>

<div class="header">
  <h1>Holiday Point</h1>
  <p>   TAKE only MEMORIES,leave only FOOTPRINTS</p>	
</div>

<div class="navbar">
  <a href="#" class="active">Home</a>
  <a href="#">CART</a>
  <a href="#">PREVIOUS BOOKINGS</a>
  <a href="#">DETAILS</a>
  <a href="#">ABOUT</a>
  
  
  <a href="#" class= "right"> <button onclick="location.href='home.jsp'" >Logout</button></a>
  <a  class="right">Hello, <%=session.getAttribute("email") %></a>
  <a  class="right">Hello, <%=session.getAttribute("userid") %></a>
</div>

<div style="text-align:center"><h2>TOURS AND PACKAGES</h2></div>
<div style="text-align:center"><h4>Don't Miss These packages and deals</h4></div>



<div class="main">
<%
	try{ 
		connection = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
		statement=connection.createStatement();
		String sql ="SELECT * FROM packages";
		resultSet = statement.executeQuery(sql);	
		while(resultSet.next()){
%>
 <h2><%=resultSet.getString("title") %></h2>
 <div class="fakeimg">
 <img src="<%=resultSet.getString("image")%>" width="60%" height="600"></div>
 <p><%=resultSet.getString("amount") %></p>
 <p><%=resultSet.getString("shortdesc") %></p><br>

<FORM NAME="form1" action = "fetchpackage" METHOD="POST">
	<input type = "hidden" name = "packageid" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "amount" value="<%=resultSet.getString("amount") %>">
	<input type = "hidden" name = "destination" value="<%=resultSet.getString("title") %>">
	<input type = "hidden" name = "description" value="<%=resultSet.getString("description") %>">
	<input type = "hidden" name = "numberofdays" value="<%=resultSet.getString("numberofdays") %>">
	<input type = "hidden" name = "image" value="<%=resultSet.getString("image") %>">
	<input type = "hidden" name = "publishdate" value="<%=resultSet.getString("publishdate") %>">
	<input type = "hidden" name = "shortdesc" value="<%=resultSet.getString("shortdesc") %>">
	<input type = "hidden" name = "numberofhotels" value="<%=resultSet.getString("numberofhotels") %>">
	<input type = "hidden" name = "imageforsone" value="<%=resultSet.getString("imageforsone") %>">
	<input type = "hidden" name = "imageforstwo" value="<%=resultSet.getString("imageforstwo") %>">
	<input type = "hidden" name = "imageforsthree" value="<%=resultSet.getString("imageforsthree") %>">
 <button class="button" onclick="location.href='booking.jsp'" >Package details</button>
 <br>
 </FORM>
<% 
}

} catch (Exception e) {
	e.printStackTrace();
}
%>

<script>
var modal = document.getElementById('id01','id02');
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</div>
</body>
</html>