<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>Add Tour Details</h1>
  <form action="<%= "addtour" %>" method="post" enctype = "multipart/form-data">
   <table style="with: 80%">
    <tr>
     <td>Package Id</td>
     <td><input type="text" name="packageid" /></td>
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
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>