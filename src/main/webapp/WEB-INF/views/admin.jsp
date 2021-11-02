<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<style><%@ include file="/WEB-INF/views/css/home.css"%></style>	
<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
<style>
body {
font-size: 18px;
}
</style>
</head>
<body>
 <div class="nav-bar">
        <a href="login" class="nav-button" style = "float: right">Logout</a>
    </div>
        <div class="form-holder">
                <div class="outer-box">
                    <div class="upper-search-box">
                    <h2 align="center">Admin Panel</h2>
                    </div>
                    <div class = "lower-search-box">
                    <div class="row-padding">
                    <div class="column-padding">
					<label>ADD BUS:</label>
					</div>
					<div class="column-padding">
					<a href="addBus">ADD</a>
					</div>
					</div>
					<div class="row-padding">
					<div class="column-padding">
					<label> BUS:</label>
					</div>
					<div class="column-padding">
					<a href="deleteBus">Delete</a>
					</div>
					</div>
					<div class="row-padding">
					<div class="column-padding">
					<label> Customer:</label>
					</div>
					<div class="column-padding">
					<a href="custBooking">Show Customer</a>
					</div>
					<div class="column-padding">
					<a href="showAll">Show All Buses</a>
					</div>
					</div>
				</div>
		</div>
	</div>
</body>
</html>