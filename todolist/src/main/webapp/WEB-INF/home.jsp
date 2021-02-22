<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<h1> Home</h1>
	<a href="/logout">logout</a>
	<form action="login" method ='POST'>
  <label for="username">username:</label><br>
  <input type="text" id="username" name="username"><br>
  <label for="password">password:</label><br>
  <input type="text" id="password" name="password">
  <button>submit</button>
</form>
</body>
</html>