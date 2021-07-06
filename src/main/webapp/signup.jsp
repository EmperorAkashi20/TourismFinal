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
  position:absolute;
  bottom:0;
  border-radius: 0px;
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
     
      <form action="#">
        <!--Email-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input class="mdl-textfield__input" type="email" id="sample3">
          <label class="mdl-textfield__label" for="sample3">Email</label>
        </div>
        <br/>
        <br/>
         <!--Name-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input class="mdl-textfield__input" type="email" id="sample3">
          <label class="mdl-textfield__label" for="sample3">Name</label>
        </div>
        <br/>
        <br/>
         <!--Contact-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input class="mdl-textfield__input" type="email" id="sample3">
          <label class="mdl-textfield__label" for="sample3">Contact</label>
        </div>
        <br/>
        <br/>
         <!--Password-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input class="mdl-textfield__input" type="email" id="sample3">
          <label class="mdl-textfield__label" for="sample3">Password</label>
        </div>
        <br/>
        <br/>
        <!--Re-Password-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input pattern=".{8,}" class="mdl-textfield__input" type="password" id="sample3">
          <label class="mdl-textfield__label" for="sample3">Re-Password</label>
        </div>
        <br/>
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <a href="index.jsp">Already Have An Account? Sign In!</a>
        </div>
        <br/>
        <br/>
      </form>
    </div><!--/.form-section-->
    
    <button class="sign-in-btn mdl-button mdl-js-ripple-effect mdl-js-button mdl-button--raised mdl-button--colored">
      Sign Up
    </button><!--/button-->
 </div><!--/.signin-->
</body>
</html>     


