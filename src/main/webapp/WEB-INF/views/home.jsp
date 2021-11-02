<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
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
        <a href="#">Home</a>
        <a href="profile">Profile</a>
        <a href="bookingHistory">Booking</a>
        <a href="changePassword">Change Password</a>
        <a href="#">Wallet</a>
      </div>

      <!-- Search Form -->
      <div class="form-holder">
        <div class="outer-box">
            <div class="upper-search-box">
            <h2 align="center">Search Buses</h2>
            </div>
            <div class = "lower-search-box">
                <form action="buslist" method="POST">
                <center><p style="color:red">${noBus}</p></center>
                    <div class="row-padding">
                        <div class="column-padding">
                            <label>Source:</label>
                            <input type="text" placeholder="Source" class="input-field" id="source" name="source" required>
                        </div>
                        <div class="column-padding">
                            <label>Destination:</label>
                            <input type="text" placeholder="Destination" class="input-field" id="destination" name="destination" required>
                        </div>
                   </div>
    
                    <div class="row-padding">
                            <div class="column-padding">
                                <label>Onward Date:</label>
                                <input type="text" placeholder="Onward Date" class="input-field" id="onward_date" name="onwardDate" required>
                            </div>
                            <div class="column-padding">
                                <label>Return Date:</label>
                                <input type="text" placeholder="Return Date" class="input-field" id="return_date">
                            </div>
                        </div>
                        <div class="submit-button">
                    <input type="submit" class="submit" value="Search">
                    </div>
                </form>
            </div>
        </div>
    </div>

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
            
            $("#onward_date").datepicker({
            	dateFormat: "dd-mm-yy",
                minDate: 0,
                maxDate: "3M"
            });

            $("#return_date").datepicker({
                dateFormat: "dd-mm-yy",
                minDate: +1,
                maxDate: "3M"
            });
        });
    </script>
</body>
</html>