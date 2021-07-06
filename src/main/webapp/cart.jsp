<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Shopping Cart Checkout Widget</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
  <div class="cart">
    <div class="cart-top">
      <h2 class="cart-top-title">Checkout</h2>
      <div class="cart-top-info">Destination</div>
    </div>

    <ul>
      <li class="cart-item">
        <span class="cart-item-pic">
          <img src="">
        </span>
        Item #1
        <span class="cart-item-desc">Destination:</span>
        <span class="cart-item-price">$1600.80</span>
      </li>
      <li class="cart-item">
        <span class="cart-item-pic">
          <img src="">
        </span>
        
  
    </ul>

    <div class="cart-bottom">
      Total: $54.80
      <a href="#" class="cart-button">Continue</a>
    </div>
  </div>


  </div>
</body>
</html>
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
  background: #eee;
}

.cart {
  margin: 50px auto;
  width: 800px;

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

.cart-item:first-child {
  margin-top: 2px;
  padding-top: 11px;
}

.cart-item-pic {
  position: relative;
  float: center;
  margin: -2px 12px 0 -7px;
}


.cart-item-desc {
  display: block;
  font-size: 12px;
  font-weight: normal;
  color: #b8c6cc;
}

.cart-item-price {
  position: absolute;
  top: 50%;
  right: 15px;
  margin-top: -10px;
  color: #eee;
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