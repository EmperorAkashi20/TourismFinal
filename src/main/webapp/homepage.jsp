<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("packageid");
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>title</b></td>
<td><b>amount</b></td>
<td><b>description</b></td>
<td><b>numberofdays</b></td>
<td><b>hotels</b></td>
<td><b>image</b></td>
<td><b>publishdate</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
statement=connection.createStatement();
String sql ="SELECT * FROM packages";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("packageid") %></td>
<td><%=resultSet.getString("title") %></td>
<td><%=resultSet.getString("amount") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("numberofdays") %></td>
<td><%=resultSet.getString("hotels") %></td>
<td><%=resultSet.getString("image") %></td>
<td><%=resultSet.getString("publishdate") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>




<!-- /WebApp/assets/WhatsApp Image 2021-06-24 at 18.00.59.jpeg -->