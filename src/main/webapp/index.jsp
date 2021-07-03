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
     <td>Description</td>
     <td><input type="text" name="description" /></td>
    </tr>
    <tr>
     <td>No Of Days</td>
     <td><input type="text" name="numberofdays" /></td>
    </tr>
    <tr>
     <td>Hotels</td>
     <td><input type="text" name="numberofhotels" /></td>
    </tr>
    <tr>
     <td>Select Image:</td>
  	<td><input type="file" name = "imagePath" /></td>
    </tr>
    <tr>
     <td>Date</td>
     <td><input type="text" name="publishDate" /></td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>