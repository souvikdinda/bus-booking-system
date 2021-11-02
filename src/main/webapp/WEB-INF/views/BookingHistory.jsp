<%@page import="org.springframework.web.context.annotation.SessionScope" isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Booking History</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
		<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
		<style><%@ include file="/WEB-INF/views/css/busSearch.css"%></style>	
	</head>
	<body>
	<form >
		<%-- <%=${sessionScope.list}%> 	 --%> 
		<!-- Top navigation bar-->
		<div class="nav-bar">
			<a href="#" id = "navbar" class="nav-button mainbutton" onclick="check()">&#9776</a>
			<a href="#" class="nav-button">Hello ${email}</a>
			<a href="logout" class="nav-button" style = "float: right">Logout</a>
		</div>

		<!--Side navigation bar-->
		<div id="mySidenav" class="sidenav">
			<a href="home">Home</a>
			<a href="profile">Profile</a>
			<a href="#">Booking</a>
			<a href="changePassword">Change Password</a>
			<a href="#">Wallet</a>
		</div>

		<div class="bus-search">
			<table>
				<tr>
					<th>Bus number</th>
					<th>Ticket number:</th>
					<th>Booking Date</th>
					<th>Journey Date</th>
					<th>Number of Passengers</th>
					<th>Fare</th>
					<th></th>
				</tr>
				<c:forEach items="${requestScope.list }"  var="user">
				<tr>
					<td>${user.busno}</td>
					<td>${user.ticketNo }</td>
					<td>${user.bookingDate }</td>
					<td>${user.journeyDate }</td>
					<td>${user.noOfPassengers }</td> 
					<td>${user.cost }</td>
					<td><button type="submit" class="submit"><a href="cancel?ticketNo=${user.ticketNo}">Cancel</a></button></td>
				</tr>
				</c:forEach> 
			</table> 
		</div>

	 <!-- Footer -->
		<footer class="page-footer">
			<div class="footer-info">
				<h4>Copright</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
			</div>
			<div class="footer-info">
				<h4>Terms & Condition</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
			</div>
			<div class="footer-info">
				<h4>Privacy</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
			</div>
			<div class="footer-info">
				<h4>FAQ</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
			</div>
		</footer>
		
		<script>
			$(document).ready(function(){
				$("#navbar").toggle(
					function(){$("#mySidenav").css({"width": "250px"});},
					function(){$("#mySidenav").css({"width": "0px"});
				});
			});
		</script>
		</form>
	</body>
</html>