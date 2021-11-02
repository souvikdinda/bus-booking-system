<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bus Search</title>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
        <style><%@ include file="/WEB-INF/views/css/busSearch.css" %> </style>
    </head>
    <body>
           <script> 
           function book() {
               alert("Please Login/ Sign Up to book the seat");
           }
           </script> 
    <!-- Top navigation bar-->
        <div class="nav-bar">
            <a href="login" class="nav-button" style = "float: right">Login | SignUp</a>
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
						<td><button type="submit" class="submit" onclick="book()">Book</a></button></td>
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
    </body>
</html> 