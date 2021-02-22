<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<h1>Please input the following information to register</h1>
		<c:if test ="${(error == 'error')}"> <h3>User already exists. Please provide a different user name.</h3></c:if><br>
		<form action="register" method='POST'>
		<label for="name">Username:</label> <input type="text" id="username"
			name="username" required> <br> <label for="password">Password:</label>
		<input type="text" id="password" name="password" required><br>
		<label for="email">Email:</label> <input type="text" id="email"
			name="email" required><br>
		<button>submit</button>
		<br>
	</form>
</body>
</html>