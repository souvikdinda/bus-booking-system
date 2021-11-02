<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Delete Bus</title>
<style><%@ include file="/WEB-INF/views/css/home.css"%></style>	
</head>
<body>
<div class="nav-bar">
        <a href="adminHome" class="nav-button" style = "float: right">Home</a>
    </div>
        <div class="form-holder">
                <div class="outer-box">
                    <div class="upper-search-box">
                    <h2 align="center">Delete Buses</h2>
                    </div>
                    <div class = "lower-search-box">
                            <form action="deleteBus" method="post">
                            <div class="row-padding">
                                <div class="column-padding">
                                    <label>BUS ID:</label>
                                    <input type="number" placeholder="Bus Id" class="input-field" name="busId">
                                </div>
                           </div>
                           <div class="submit-button">
                                <input type="submit" class="submit" value="Delete">
                                </div>
                        </div>
                    </div>
                </form>
            </body>
        </html>

<body>
