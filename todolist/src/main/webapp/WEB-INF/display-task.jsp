<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	
	
	<h1>Welcome [${user}] to your task manager!!!</h1>
	<h2>View your tasks here</h2>
	<c:forEach var="task" items="${tasks}">
		<table>
			<tr>
				<th style="padding:0 15px 0 15px;">Start Date</th>
				<th style="padding:0 15px 0 15px;">End Date</th>
				<th style="padding:0 15px 0 15px;">Description</th>
				<th style="padding:0 15px 0 15px;">Email</th>
				<th style="padding:0 15px 0 15px;">Severity</th>
			</tr>
			<tr>
				<td style="padding:0 15px 0 15px;">${task.startDate}</td>
				<td style="padding:0 15px 0 15px;">${task.endDate}</td>
				<td style="padding:0 15px 0 15px;">${task.description}</td>
				<td style="padding:0 15px 0 15px;">${task.email}</td>
				<td style="padding:0 15px 0 15px;">${task.severity}</td>
			</tr>
		</table>
		<form method='POST' action="direct-to-edit-task">
			<input type="hidden" name="id" value="${task.id}">
			<button type="submit">edit</button>
		</form>
		<form method='POST' action="delete-task">
			<input type="hidden" name="id" value="${task.id}">
			<button
				onclick="return confirm('Completing will delete the task, is that ok?')"
				type="submit">complete</button>
		</form>
	</c:forEach>
	<br>
	<hr>
	<h2>Please add a new task:</h2>
	<form action="setTask" method='POST'>
		<br> <label style="padding:0 11px 0 12px;" for="startDate"><b>Startdate:</b></label> <input type="date"
			id="startdate" name="startdate" required> <input
			type="hidden" id="name" name="name" value="${user}"><br>
		<label style="padding:0 15px 0 14px;" for=enddate><b>Enddate:</b></label> <input type="date" id="enddate"
			name="enddate" required><br> <label style="padding:0 4px 0 4px;"  for="description"><b>Description:</b></label>
		<input type="text" id="description" name="description" required><br>
		<label style="padding:0 23px 0 23px;"  for="email"><b>Email:</b></label> <input type="text" id="email"
			name="email" required><br>         
		 <label style="padding:0 16px 0 15px;"  for="severity"><b>Severity:</b> </label><select name = "severity">
            <option value = "low" selected>low</option>
            <option value = "active">active</option>
            <option value = "critical">critical</option>
         </select>
		<button type="submit" class="btn btn-primary btn-block">submit</button>
		
		<br>
	</form>
	<br>
	<a href="/logout"><button style="height:40px;width:100px">logout</button></a>

</body>
</html>