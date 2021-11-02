<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Booking Details</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
	<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
	<style><%@ include file="/WEB-INF/views/css/booking.css"%></style>	
	<script><%@ include file="/WEB-INF/views/js/booking.js"%></script>
	<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
     <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
 	<style><%@ include file="/WEB-INF/views/css/home.css"%></style>	
	<style>
     .ui-datepicker {
    background: #f6f5f7;
    font-family: 'Montserrat';
	}
	
	.ui-datepicker-header {
	    background: #03cafc;
	    border: none;
	    text-transform: uppercase;
	}
	
	.ui-datepicker th {
	    text-transform: uppercase;
	}
	
	.ui-datepicker td span, .ui-datepicker td a {
	    display: inline-block;
	    text-align: center;
	    width: 30px;
	    height: 30px;
	    line-height: 30px;
	    border-radius: 50%;
	}
	
	.ui-datepicker-calendar a.ui-state-default { 
	    background: #e4e4e4;
	    border: none;
	}
	
	.ui-datepicker-calendar a.ui-state-hover { 
	    background: #baf1ff;
	    border: none;
	    color: #00718d;
	} 
	
	.ui-datepicker-calendar a.ui-state-active { 
	    background: #baf1ff;
	    border: 1px solid #00718d;
	    color: #00718d;
	}
     </style>
</head>
<body>

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
		<a href="bookingHistory">Booking</a>
		<a href="changePassword">Change Password</a>
		<a href="#">Wallet</a>
	</div>

	<div class="bus-search">
		<table>
		<tr>
				<th>Bus_ID</th>
				<th>Bus_Type</th>
				<th>Bus_Name</th>
				<th>Capacity</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Fare</th>
			</tr>

			<tr>
				<td>${busInfo.bus_id}</td>
				<td>${busInfo.bus_type}</td>
				<td>${busInfo.bus_name }</td>
				<td>${busInfo.capacity}</td>
				<td>${busInfo.source}</td>
				<td>${busInfo.destination}</td>
				<td>${busInfo.fare}</td>
			</tr>
		</table>
	</div>

	<form action="bookingProcess" modelAttribute="book" method="post">
		<table>
			<tr class="passenger">
				<td>Enter email : </td>
				<td><input type="email" name="email" value="${email}" readonly /></td>
				<td></td>
			</tr>
			<tr class="passenger">
				<td>Enter no of passengers : </td>
				<td><input type="number" name="noOfPassengers" id="passN" /></td>
				<td><input type="button" class="add" value="Add" onclick="insert()"/><br/></td>
			</tr>
		</table>

			<!-- FOR LOOP -->
			<div id="demo"></div>
		
		<table>
			<tr>
				<td>Unit Cost : </td>
				<td><input type="number" value="${busInfo.fare}" name="cost" readonly/></td>
			</tr>
			<tr>
				<td>Enter Journey Date : </td>
				<td><input type="text" name="journeyDate" value="${onwardDate}" readonly/></td>
			</tr>
			<tr>
				<td>Bus No : </td>
				<td><input type="number" value="${busInfo.bus_id}" name="busno" readonly /></td>
			</tr>
			<tr>
				<td>Booking Date : </td>
				<td><input type="text" name="bookingDate" id="bookingDate" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" class="add" value="Book" /></td>
			</tr>
		</table>
	</form>

	

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

</body>
</html>