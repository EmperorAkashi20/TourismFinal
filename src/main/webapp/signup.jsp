<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Holidaypoint.com</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body{
  padding: 50px;
  font-family: 'Roboto', sans-serif;
  background-image: url("images/bg.jpg");
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
        <h2 class="active">Sign Up</h2>
        <h2 class="nonactive">Sign In</h2>
      </div><!--/.sign-in-text-->
      <div class="layer">
      </div><!--/.layer-->
      <p class="point">&#9650;</p>
    </div><!--/.back-img-->
    <div class="form-section">
     
      <form action="register" method="post">
        <!--Email-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input type="text" placeholder="Enter Name" name="name" required>
			<label for="name"><b>Name</b></label>
        </div>
        <br/>
         <!--Name-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">    
			<input type="text" placeholder="Enter Email" name="email" required>
			 <label for="email"><b>Email</b></label>
        </div>
        <br/>     
         <!--Contact-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input type="text" placeholder="Enter Phone" name="contact" required>
			         <label for="contact"><b>Contact</b></label>
        </div>
        <br/>
         <!--Password-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input type="password" placeholder="Enter Password" name="password" required>
			         <label for="password"><b>Password</b></label>
        </div>
        <br/>     
        <!--Re-Password-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			<input type="password" placeholder="Repeat Password" name="rePass" required>
			          <label for="rePass"><b>Repeat Password</b></label>
        </div>
        <br/>
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <a href="index.jsp">Already Have An Account? Sign In!</a>
        </div>
        <br/>
        <br/>
        <button class="sign-in-btn mdl-button mdl-js-ripple-effect mdl-js-button mdl-button--raised mdl-button--colored">
      Sign Up
    </button>
      </form>
    </div><!--/.form-section-->
    
    <!--/button-->
 </div><!--/.signin-->
</body>
</html>     


