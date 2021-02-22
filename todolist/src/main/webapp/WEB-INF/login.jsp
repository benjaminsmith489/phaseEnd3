<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<h1>Login </h1>
${SPRING_SECURITY_LAST_EXCEPTION.message} 
<form action="login" method ='POST'>
  <label for="username">Username:</label><br>
  <input type="text" id="username" name="username"><br>
  <label for="password">Password:</label><br>
  <input type="text" id="password" name="password">
  <button style="height:25px;width:100px">submit</button>
</form>
<h1> Not a user yet, Come get registered!!</h1>
	<a  href="display-registration"><button style="height:40px;width:100px">register</button></a>
</body>
</html>