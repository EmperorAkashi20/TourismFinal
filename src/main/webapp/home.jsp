<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  background-image: url("pic.jpg");
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
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Style the button */
.button {
  border: 2px white;
  color: white;
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
}

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




/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width: 100%;
  }
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
  <a href="#" class="right">Logout</a>
  <a href="#" class="right">Create account</a>

</div>

    <h2>TOURS AND PACKAGES</h2>
    <h5> <b> Don't miss these package deals</b></h5>
     
     <div 
     class="sidebar-image-gallery">
<a href=""><img src="pic.jpg" width="80" height="40" alt="pic"></a>
<a href=""><img src="pic.jpg" width="80" height="40" alt="pic"></a>
<a href=""><img src="pic.jpg" width="80" height="40" alt="pic"></a>
<a href=""><img src="pic.jpg" width="80" height="40" alt="pic"></a></div>
  <div class="main">
    <h2> PARIS</h2>
    <h5>6 DAYS PACKAGE</h5>
    <div class="fakeimg" >
    
    <img src="pic.jpg" alt="destination" width="950" height="400"></div>
    <p>PRICE:234500</p>
    <p>Short detail of the trip <br>enjoy</p>
    <button class="button" >Add this deal to cart</button>
    <br>
    
    
    <h2>EUROPE</h2>
    <h5>7 DAYS PACKAGE</h5>
    <div class="fakeimg">
  
    <img src="pic.jpg" alt="destination" width="1050" height="400"></div>
    <p>PRICE: 500000</p>
    <p>Short detail of the trip</p>
    <button class="button">Add this deal to cart</button>
    <br>
    
    <h2> Las vegas</h2>
    <h5>6 DAYS PACKAGE</h5>
    <div class="fakeimg">
    
    <img src="pic.jpg" alt="destination" width="850" height="400"></div>
    <p>PRICE:234500</p>
    <p>Short detail of the trip </p>
    <button class="button">Add this deal to cart</button>
    <br>
    
    <h2> Huwai</h2>
    <h5>6 DAYS PACKAGE</h5>
    <div class="fakeimg">
    
    <img src="pic.jpg" alt="destination" width="850" height="400"></div>
    <p>PRICE:234500</p>
    <p>Short detail of the trip </p>
    <button class="button">Add this deal to cart</button>
    <br>
    
    <h2> Switzerland</h2>
    <h5>6 DAYS PACKAGE</h5>
    <div class="fakeimg">
 
    <img src="pic.jpg" alt="destination" width="850" height="400"></div>
    <p>PRICE:234500</p>
    <p>Short detail of the trip </p>
    <button class="button">Add this deal to cart</button>
    <br>
    
    <h2> Italy</h2>
    <h5>6 DAYS PACKAGE</h5>
    <div class="fakeimg">
 
    <img src="pic.jpg" alt="destination" width="850" height="400"></div>
    <p>PRICE:234500</p>
    <p>Short detail of the trip </p>
    <button class="button">Add this deal to cart</button>
    <br>
    
    <h2>Dubai</h2>
    <h5>6 DAYS PACKAGE</h5>
    <div class="fakeimg">
    <img src="pic.jpg" alt="destination" width="850" height="400"></div>
    <p>PRICE:234500</p>
    <p>Short detail of the trip </p>
    <button class="button">Add this deal to cart</button>
    <br>
    
    
  </div>


</body>

</html>
    