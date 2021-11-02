<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Bus Add</title>
<style><%@ include file="/WEB-INF/views/css/home.css"%></style>	
</head>
<body>
<div class="nav-bar">
        <a href="adminHome" class="nav-button" style = "float: right">Home</a>
    </div>
        <div class="form-holder">
                <div class="outer-box">
                    <div class="upper-search-box">
                    <h2 align="center">Add Buses</h2>
                    </div>
                    <div class = "lower-search-box">
                            <form action="addBus" method="post">
                            <div class="row-padding">
                                <div class="column-padding">
                                    <label>BUS ID:</label>
                                    <input type="number" placeholder="Bus Id" class="input-field" name="busId">
                                </div>
                                <div class="column-padding">
                                    <label>BUS TYPE:</label>
                                    <input type="text" placeholder="Bus Type" class="input-field" name="busType">
                                </div>
                           </div>
            
                            <div class="row-padding">
                                    <div class="column-padding">
                                        <label>BUS NAME:</label>
                                        <input type="text" placeholder="Bus Name" class="input-field" name="busName">
                                    </div>
                                    <div class="column-padding">
                                        <label>CAPACITY:</label>
                                        <input type="number" placeholder="Capacity" class="input-field" name="cap">
                                    </div>
                                </div>

                                <div class="row-padding">
                                        <div class="column-padding">
                                            <label>SOURCE:</label>
                                            <input type="text" placeholder="Source" class="input-field" id="onward_date" name="src">
                                        </div>
                                        <div class="column-padding">
                                            <label>DESTINATION:</label>
                                            <input type="text" placeholder="Destination" class="input-field" id="return_date" name="dest">
                                        </div>
                                    </div>

                                    <div class="row-padding">
                                            <div class="column-padding">
                                                <label>FARE:</label>
                                                <input type="number" placeholder="Fare" class="input-field" id="onward_date" name="fare">
                                            </div>
                                        </div>
                                <div class="submit-button">
                            <input type="submit" class="submit" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
</body>
</html>