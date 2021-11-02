<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <style><%@ include file="/WEB-INF/views/css/home.css" %></style>
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
        <a href="#">Profile</a>
        <a href="bookingHistory">Booking</a>
        <a href="changePassword">Change Password</a>
        <a href="#">Wallet</a>
      </div>

      <div class="form-holder">
        <div class="outer-box">
            <div class="upper-search-box">
                <h2 align="center">Profile Details</h2>
            </div>
            <div class="lower-search-box">
                <c:forEach items="${requestScope.list }"  var="user">
                    <div class="row-padding">
                        <div class="column-padding">
                            <label>First Name:</label>
                            <p>${user.firstName }</p>
                        </div>
                        <div class="column-padding">
                            <label>Last Name:</label>
                            <p>${user.lastName }</p>
                        </div>
                </div>
                <div class="row-padding">
                        <div class="column-padding">
                            <label>Gender:</label>
                            <p>${user.gender }</p>
                        </div>
                        <div class="column-padding">
                            <label>Date of Birth:</label>
                            <p>${user.dateOfBirth }</p>
                        </div>
                    </div>
                    <div class="row-padding">
                            <div class="column-padding">
                                <label>Email:</label>
                                <p>${user.email }</p>
                            </div>
                            <div class="column-padding">
                                <label>Contact No:</label>
                                <p>${user.contactNo}</p>
                            </div>
                    </div>
                </c:forEach>
            </div>
        </div>

      </div>

      <!--footer-->
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