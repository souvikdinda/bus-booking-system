<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Show All Buses</title>
<style><%@ include file="/WEB-INF/views/css/home.css"%></style>	
</head>
<body>
<div class="nav-bar">
        <a href="adminHome" class="nav-button" style = "float: right">Home</a>
    </div>
		<div class="form-holder">
                <div class="outer-box">
                    <div class="upper-search-box">
                    <h2 align="center">Show All Buses</h2>
                    </div>
                    <div class = "lower-search-box">
	<table border="1">
		<tr>
			<th>BusId</th>
			<th>BusType</th>
			<th>BusName</th>
			<th>Capacity</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Fare</th>
		</tr>
		<!-- For loop -->
		<c:forEach items="${requestScope.list }"  var="bus">
			<tr>
				<td>${bus.bus_id }</td>
				<td>${bus.bus_type }</td>
				<td>${bus.bus_name }</td>
				<td>${bus.capacity }</td>
				<td>${bus.source }</td>
				<td>${bus.destination }</td>
				<td>${bus.fare }</td>
			</tr>
		</c:forEach>
	</table></div></div></div>
</body>
</html>