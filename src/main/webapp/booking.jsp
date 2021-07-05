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

<%
try{ 
connection = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
statement=connection.createStatement();
String sql ="SELECT * FROM packages";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<!DOCTYPE html>
<html lang="en">
<title>HOLIDAYPOINT.COM</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}

.button {
  border: 2px white;
  color: black;
  padding: 15px 320px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 4px 2px;
  cursor: pointer;
  background-color: #008CBA;
  border-radius: 25px;
}

.button:hover {
  background-color:green;
  color: white;
}
</style>
<body> 

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="#band" class="w3-bar-item w3-button w3-padding-large w3-hide-small">PACKAGE</a>
    <a href="#tour" class="w3-bar-item w3-button w3-padding-large w3-hide-small">TOUR DETAILS</a>
    <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT</a>
    <div class="w3-dropdown-hover w3-hide-small">
     
      </div>
    </div>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#band" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">PACKAGE</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">TOUR DETAILS</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">CONTACT</a>
 
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="/w3images/la.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>BURJ KHALIFA</h3>
      <p><b></b></p>  
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="/w3images/ny.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>SKI DUBAI</h3>
      <p><b></b></p>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="/w3images/chicago.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>HINDI LANE</h3>
      <p><b></b></p>    
    </div>
  </div>

  <!-- The Band Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h2 class="w3-wide"><%=resultSet.getString("title").toUpperCase() %> TOUR PACKAGE</h2>
    <p class="w3-opacity"><i><%=resultSet.getString("title") %> Delight Tour</i></p>
    <p class="w3-justify"><%=resultSet.getString("description") %></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-third">
        <p>Burj Khalifa</p>
        <img src="/w3images/bandmember.jpg" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%">
      </div>
      <div class="w3-third">
        <p>Wildwadi Park</p>
        <img src="/w3images/bandmember.jpg" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%">
      </div>
      <div class="w3-third">
        <p><%=session.getAttribute("price") %></p>
        <img src="/w3images/bandmember.jpg" class="w3-round" alt="Random Name" style="width:60%" border="2px">
      </div>
    </div>
  </div>

  <!-- The Tour bSection -->
  <div class="w3-black" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">BOOKING DETAILS</h2>
      <p class="w3-opacity w3-center"><i> book your tour now</i></p><br>
        <form action="/action_page.php" target="_blank">
        <p class="w3-opacity"><i> Your name</i></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Name" required name="Name"></p><br>
       <p class="w3-opacity "><i> enter number of people</i></p>
      <p><input class="w3-input w3-padding-16" type="number" placeholder="How many people" required name="People"></p><br>
            <p class="w3-opacity "><i>enter the starting date of your tour</i></p>
      <p><input class="w3-input " type="datetime-local" placeholder="Tour start date" required name="date" value="2020-11-16T20:00"></p><br>
 	<p class="w3-opacity"><i>Passport</i></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Passport Number" required name="passport"></p><br>
            <p class="w3-opacity"><i> Room type</i></p>
     
  <label for="roomtype">Choose your room type:</label>
  <select id="roomtype" name="cars">
    <option value="classic">Classic</option>
    <option value="special">Special</option>
    <option value="deluxe">Deluxe</option>
   
  </select>
</form>

<FORM NAME="form1" action = "addtocart" METHOD="POST">
	<input type = "hidden" name = "userid" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "packageid" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "numberofpeople" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "fromdate" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "todate" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "transport" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "bookingid" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "totaldays" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "price" value="<%=resultSet.getString("amount") %>">
	<input type = "hidden" name = "roomtype" value="<%=resultSet.getString("packageid") %>">
	<input type = "hidden" name = "destination" value="<%=resultSet.getString("packageid") %>">
	<br><br><button type="submit" class="button" style=text-align:centre;>Add To Cart</button><br><br>
</FORM>
<% 
}

} catch (Exception e) {
	e.printStackTrace();
}
%>
     

      <h2 class="w3-wide w3-center">SIMILAR PACKAGES</h2>
      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="/w3images/newyork.jpg" alt="New York" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b> Exciting New York</b></p>
           
            <p>BDSF SKD HFKSD HGLSDS DLAE LA[SDAS KDKS SKD</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">BOOK NOW</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="/w3images/paris.jpg" alt="Paris" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Paris</b></p>
           
            <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">BOOK NOW</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="/w3images/sanfran.jpg" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>San Francisco</b></p>
           
            <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">BOOK NOW</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Ticket Modal -->
  <div id="ticketModal" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32">
        <span onclick="document.getElementById('ticketModal').style.display='none'"
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Tickets</h2>
      </header>
      <div class="w3-container">
        <p><label><i class="fa fa-shopping-cart"></i> Tickets, $15 per person</label></p>
        <input class="w3-input w3-border" type="text" placeholder="How many?">
        <p><label><i class="fa fa-user"></i> Send To</label></p>
        <input class="w3-input w3-border" type="text" placeholder="Enter email">
        <button class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right">PAY <i class="fa fa-check"></i></button>
        <button class="w3-button w3-red w3-section" onclick="document.getElementById('ticketModal').style.display='none'">Close <i class="fa fa-remove"></i></button>
        <p class="w3-right">Need <a href="#" class="w3-text-blue">help?</a></p>
      </div>
    </div>
  </div>

  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">CONTACT</h2>
    <p class="w3-opacity w3-center"><i>drop your queries here.</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> kolkata,west bengal<br>
        <i class="fa fa-phone" style="width:30px"></i> Phone: 9876543210<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: mail@mail.com<br>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
            </div>
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
            </div>
          </div>
          <input class="w3-input w3-border" type="text" placeholder="Message" required name="Query">
          <button class="w3-button w3-black w3-section w3-right" type="submit">SEND</button>
        </form>
      </div>
    </div>
  </div>
 
<!-- End Page Content -->
</div>

<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
 
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>

