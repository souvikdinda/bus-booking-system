<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Show Customers</title>
<style><%@ include file="/WEB-INF/views/css/home.css"%></style>	
</head>
<body>
<div class="nav-bar">
        <a href="adminHome" class="nav-button" style = "float: right">Home</a>
    </div>
		<div class="form-holder">
                <div class="outer-box">
                    <div class="upper-search-box">
                    <h2 align="center">Customers</h2>
                    </div>
                    <div class = "lower-search-box">
Registered User who didnt book
<table border="1">

<tr>
			<th>Email</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
<c:forEach items="${requestScope.cust }"  var="cust">
			<tr>
				<td>${cust.email }</td>
				<td>${cust.firstName }</td>
				<td>${cust.lastName }</td>
			</tr>
		</c:forEach>
</table>	</div></div></div>	
</body>
</html>