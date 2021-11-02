<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta charset="UTF-8">
    <style><%@include file="/WEB-INF/views/css/index.css"%></style>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
     <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
     <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
     
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

    <!-- Sections and Articles -->
    <section class="bg_section1">

        <!-- Navigation Bar-->
        <div class="nav-bar">
            <a href="#" class="nav-button">Home</a>
            <a href="#about_us" class="nav-button">About Us</a>
            <a href="#contact_us" class="nav-button">Contact Us</a>
            <a href="spring-mvc/login" class="nav-button" style = "float: right">Login | Sign Up</a>
        </div>

        <div class="form-holder">
        <!-- Search Form -->
        <div class="outer-box">
            <div class="upper-search-box">
            <h2 align="center">Search Buses</h2>
            </div>
            <div class = "lower-search-box">
                <form action = "spring-mvc/unauthorised" method = "POST">
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
                                <input type="text" class="input-field" id="onward_date" name="onwardDate" placeholder="Onward Date" required>
                            </div>
                            <div class="column-padding">
                                <label>Return Date:</label>
                                <input type="text" class="input-field" id="return_date" name="returnDate" placeholder="Return Date">
                            </div>
                        </div>
                        <div class="submit-button">
                    <input type="submit" class="submit" value="Search">
                    </div>
                </form>
            </div>
        </div>
    </div>

    </section>
    <article id="about_us">
        <h2 align="center">About Us</h2>
        <div class="container">
            <div class="info">
                <h3 align="center">Example</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                </p>
            </div>
        <div class="info">
                <h3 align="center">Example</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                </p>
            </div>
        <div class="info">
                <h3 align="center">Example</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            </div>
        </div>
    </article>
    <section class="bg_section2">        
        <div class="advertisement">
        </div>
    </section>
    <article id="contact_us">
        <h2 align="center">Contact Us</h2>
        <div class="container">
            <div class="info">
                <h3 align="center">Example</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                </p>
            </div>
        <div class="info">
                <h3 align="center">Example</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                </p>
            </div>
        <div class="info">
                <h3 align="center">Example</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            </div>
        </div>
    </article>

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
$(document).ready(function() {

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