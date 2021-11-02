<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bus Search</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <style><%@ include file="/WEB-INF/views/css/busSearch.css" %></style>
        
        <style>
	        a {
			    text-decoration: none;
			    color: black;
			}
        </style>
    </head>
    <body>

    <!-- Top navigation bar-->
        <div class="nav-bar">
            <a href="#" id = "navbar" class="nav-button mainbutton" onclick="check()">&#9776</a>
            <a href="#" class="nav-button">Hello ${email}"</a>
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


    <!--<div class="bus-holder">-->
        <div class="bus-search">
            <table>
                <tr>
                    <th>Bus Type</th>
                    <th>Bus Name</th>
                    <th>Capacity</th>
                    <th>Source</th>
					<th>Destination</th>
					<th>Fare</th>
					<th></th>
                </tr>
				<!-- For loop -->
				<c:forEach items="${requestScope.list }"  var="emp">
					<tr>
						<td>${emp.bus_type }</td>
						<td>${emp.bus_name }</td>
						<td>${emp.capacity }</td>
						<td>${emp.source }</td>
						<td>${emp.destination }</td> 
						<td>${emp.fare }</td>
						<td><button type="submit" class="submit"><a href="booking?id=${emp.bus_id}&email=${email}">Book</a></button></td>
					</tr>
				</c:forEach>
            </table>
        </div>
   <!-- </div>->
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
    </body>
</html>