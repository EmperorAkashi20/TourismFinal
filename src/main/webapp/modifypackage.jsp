<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.PreparedStatement" %>

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
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Holiday Point</title>
  <style>

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}

article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
  display: block;
}

body {
  line-height: 1;
}

ol, ul {
  list-style: none;
  padding: 30px;
}
#myTable {
  border-collapse: collapse;
  width: 1200px;
  border: px solid #ddd;
  font-size: 18px;
 text-align: center;
}

blockquote, q {
  quotes: none;
}

blockquote:before, blockquote:after,
q:before, q:after {
  content: '';
  content: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

.about {
  margin: 70px auto 40px;
  padding: 8px;
  width: 260px;
  font: 10px/18px 'Lucida Grande', Arial, sans-serif;
  color: #bbb;
  text-align: center;
  text-shadow: 0 -1px rgba(0, 0, 0, 0.3);
  background: #383838;
  background: rgba(34, 34, 34, 0.8);
  border-radius: 4px;
  background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3));
  background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3));
  background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3));
  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3));
  -webkit-box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), 0 0 6px rgba(0, 0, 0, 0.4);
  box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.2), 0 0 6px rgba(0, 0, 0, 0.4);
}
.about a {
  color: #eee;
  text-decoration: none;
  border-radius: 2px;
  -webkit-transition: background 0.1s;
  -moz-transition: background 0.1s;
  -o-transition: background 0.1s;
  transition: background 0.1s;
}
.about a:hover {
  text-decoration: none;
  background: #555;
  background: rgba(255, 255, 255, 0.15);
}

.about-links {
  height: 30px;
}
.about-links > a {
  float: left;
  width: 100%;
  line-height: 30px;
  font-size: 12px;
}

.about-author {
  margin-top: 5px;
}
.about-author > a {
  padding: 1px 3px;
  margin: 0 -1px;
}


body {
  font: 13px/20px 'Lucida Grande', Verdana, sans-serif;
  color: #404040;
  background-image: url("images/bg.jpg");
}

.cart {
  margin: 50px auto;
  width: 1200px;

  overflow: hidden;
  color: white;
  text-shadow: 0 1px rgba(0, 0, 0, 0.6);
  background: #525252;
  border: 3px solid #202020;
  border-radius: 6px;
  -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.5);
  box-shadow: 0 1px 5px rgba(0, 0, 0, 0.5);
}

.cart-top {
  position: relative;
  z-index: 1;
  height: 34px;
  line-height: 14px;
  padding: 8px 15px;
  font-size: 14px;
  font-weight: bold;
  color: #eee;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.8);
  background: #404040;
  border-bottom: 1px solid #222;
  border-radius: 2px 2px 0 0;
  -webkit-font-smoothing: antialiased;
  background-image: -webkit-linear-gradient(top, #525252, #3d3d3d 80%, #383838);
  background-image: -moz-linear-gradient(top, #525252, #3d3d3d 80%, #383838);
  background-image: -o-linear-gradient(top, #525252, #3d3d3d 80%, #383838);
  background-image: linear-gradient(to bottom, #525252, #3d3d3d 80%, #383838);
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.05), inset 0 0 0 1px rgba(255, 255, 255, 0.1), 0 1px 2px rgba(0, 0, 0, 0.25);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.05), inset 0 0 0 1px rgba(255, 255, 255, 0.1), 0 1px 2px rgba(0, 0, 0, 0.25);
}

.cart-top-title {
  float: left;
}

.cart-top-info {
  float: right;
}

.cart-item {
  margin-top: 10px;
  padding-top: 11px;
  
}



.cart-bottom {
  line-height: 40px;
  padding: 10px 10px 10px 15px;
  font-weight: bold;
  background: #484848;
  background-image: -webkit-linear-gradient(top, #545454, #434343);
  background-image: -moz-linear-gradient(top, #545454, #434343);
  background-image: -o-linear-gradient(top, #545454, #434343);
  background-image: linear-gradient(to bottom, #545454, #434343);
  -webkit-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.08);
  box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.08);
}
.cart-bottom > .cart-button {
  float: right;
}

.cart-button {
  line-height: 29px;
  padding: 0 25px;
  color: white;
  text-decoration: none;
  text-shadow: 0 1px rgba(0, 0, 0, 0.3);
  background: #5aa327 padding-box;
  border: 1px solid #333;
  border-radius: 4px;
  background-image: -webkit-linear-gradient(top, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0.1) 50%, transparent 50%, rgba(0, 0, 0, 0.04));
  background-image: -moz-linear-gradient(top, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0.1) 50%, transparent 50%, rgba(0, 0, 0, 0.04));
  background-image: -o-linear-gradient(top, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0.1) 50%, transparent 50%, rgba(0, 0, 0, 0.04));
  background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0.1) 50%, transparent 50%, rgba(0, 0, 0, 0.04));
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.15), inset 0 0 0 1px rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.15), inset 0 0 0 1px rgba(255, 255, 255, 0.1);
}
.cart-button:hover {
  background-color: #5daa2d;
}
.cart-button:active {
  background-image: none;
  border-color: rgba(0, 0, 0, 0.4);
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25), 0 1px rgba(255, 255, 255, 0.05);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25), 0 1px rgba(255, 255, 255, 0.05);
}
</style>
</head>
<body>


<%
	try{ 
		System.out.println(session.getAttribute("packageid11"));
		connection = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
		statement=connection.createStatement();
		String packageid1 = session.getAttribute("packageid11").toString();
		String sql ="SELECT * FROM packages where packageid = ?";
		PreparedStatement ps;
		ps = connection.prepareStatement(sql);
		ps.setString(1,packageid1);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
%>
 

      
<% 
}

} catch (Exception e) {
	e.printStackTrace();
}
%>

 <div align="center" class="cart">
  <div class="cart-top">
      <h2 class="cart-top-title">Add A Tour</h2>
    </div>
  <form action="<%= "addtour" %>" method="post" enctype = "multipart/form-data">
   <table id = "mytable" class="cart-item">
    <tr style="width:20%">
     <td >Package Id</td>
     <td ><input type="text" name="packageid" value="<%=resultSet.getString("packageid")%>"/></td>
    </tr>
    <tr>
     <td>Destination</td>
     <td><input type="text" name="destination" /></td>
    </tr>
    <tr>
     <td>Price</td>
     <td><input type="text" name="price" /></td>
    </tr>
    <tr>
     <td>Short Description</td>
     <td><input type="text" name="shortdesc" /></td>
    </tr>
    <tr>
     <td>Description</td>
     <td><input type="text" name="description" /></td>
    </tr>
    <tr>
     <td>No Of Days</td>
     <td><input type="text" name="numberofdays" /></td>
    </tr>
    <tr>
     <td>No Of Hotels</td>
     <td><input type="text" name="numberofhotels" /></td>
    </tr>
    <tr>
    <td>Image Name</td>
     <td><input type="text" name="imagePath" /></td>
     <td>Select Image:</td>
  	<td><input type="file" name = "image" /></td>
    </tr>
    <tr>
    <td>Image 1 for slide show </td>
     <td><input type="text" name="imagePath1" /></td>
     <td>Select Image:</td>
  	<td><input type="file" name = "imageforsone" /></td>
    </tr>
    <tr>
     <td>Image 2 for slide show </td>
     <td><input type="text" name="imagePath2" /></td>
     <td>Select Image:</td>
  	<td><input type="file" name = "imageforstwo" /></td>
    </tr>
     <tr>
     <td>Image 3 for slide show </td>
     <td><input type="text" name="imagePath3" /></td>
     <td>Select Image:</td>
  	<td><input type="file" name = "imageforsthree" /></td>
    </tr>
    <tr>
     <td>Date</td>
     <td><input type="text" name="publishDate" /></td>
    </tr>
     <tr>
   </table>
    <div class="cart-bottom">
      <input type="submit" value="Submit" />
    </div>
   
  </form>
 </div>
</body>
</html>