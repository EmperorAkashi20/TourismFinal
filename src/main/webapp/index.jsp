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
%>

<html lang="en">
<head>
<title>Holidaypoint.com</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body{
  padding: 50px;
  font-family: 'Roboto', sans-serif;
  background-image: url("images/54.jpg");
}
/*Sign In Form*/
.signin{
  position: relative;
  height: 700px;
  width: 500px;
  margin: auto;
  box-shadow: 0px 30px 125px -5px #000;}
/*Background Img*/
.back-img{
  position: relative;
  width: 100%;
  height: 250px;
  background: url('https://www.omnihotels.com/-/media/images/hotels/nycber/destinations/nyc-aerial-skyline.jpg?h=660&la=en&w=1170')no-repeat   center center;
background-size: cover;
}
.layer {
    background-color: rgba(33,150,243,0.5);
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
.active{
  padding-left: 25px;
  color: #fff;
}
.nonactive {
  color: rgba(255, 255, 255, 0.6);
}
.sign-in-text{
  top: 175px;
  position: absolute;
  z-index: 1;
}
h2 {
  padding-left: 15px;
  font-size: 25px;
  text-transform: uppercase;
  display: inline-block;
  font-weight: 300;
}
.point{
  position: absolute;
  z-index: 1;
  color: #fff;
  top: 235px;
  padding-left: 50px;
  font-size: 20px;
}

/*form-section*/
.form-section{
  padding: 70px 90px 70px 90px;
}
.keep-text{
  font-size: 15px;
  color: #BDBDBD;
}
.forgot-text{
  font-size: 12px;
  color: #BDBDBD;
  text-align: right;
}
/*sign-in-btn*/
.sign-in-btn{
  width: 100%;
  height: 75px;
  position:relative;
  bottom:-100;
  border-radius: 50px;
  background-color: rgba(63, 78, 191, 1);
}
</style>
</head>
<body>


  <div class="signin">
    <div class="back-img">
      <div class="sign-in-text">
        <h2 class="active">Sign In</h2>
        <h2 class="nonactive">Sign Up</h2>
      </div><!--/.sign-in-text-->
      <div class="layer">
      </div><!--/.layer-->
      <p class="point">&#9650;</p>
    </div><!--/.back-img-->
    <div class="form-section">
     
      <form action="login" method="post">
        <!--Email-->
        <%
	try{ 
		connection = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
		statement=connection.createStatement();
		String sql ="SELECT * FROM userdetails";
		resultSet = statement.executeQuery(sql);	
		while(resultSet.next()){
%>
        
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        <label for="Email"><b>Email</b></label>
          <input type="text" placeholder="Enter Email" name="email" required>
          <input type = "hidden" name = "userid" value="<%=resultSet.getString("userId") %>">
          <input type = "hidden" name = "userid" value="<%=resultSet.getString("email") %>">
        </div>
        <br/>
        <br/>
        <!--Password-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        </div>
        <br/>
         <!--Email-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <a href="signup.jsp">Don't Have An Account? Sign Up!</a>
        </div>
        <br/>
        <br/>
        <button class="sign-in-btn mdl-button mdl-js-ripple-effect mdl-js-button mdl-button--raised mdl-button--colored">
      Sign In
    </button>
      </form>
    </div><!--/.form-section-->
    <% 
}

} catch (Exception e) {
	e.printStackTrace();
}
%>
    <!--/button-->
 </div><!--/.signin-->
</body>
</html>     


