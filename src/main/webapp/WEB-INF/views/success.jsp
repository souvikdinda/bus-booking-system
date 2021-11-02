<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Print Ticket</title>
<style><%@include file="/WEB-INF/views/css/home.css"%></style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("#btnPrint").live("click", function () {
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        });
    </script>
</head>
<body>
		<div class="form-holder">
                <div class="outer-box">
                    <div class="upper-search-box">
                    <h2 align="center">Print Ticket</h2>
                    </div>
                    <div class = "lower-search-box">
	 <form action="home"  id="form1">
    	<div id="dvContainer" border="2">
       
        <table border="1">
        <tr>
        	<th>Ticket No : </th>
        	<td>${requestScope.print.ticketNo }</td>
        </tr>
        <tr>
        	<th>No. of Passengers</th>
        	<td>${requestScope.print.noOfPassengers }</td>
       </tr>
       <tr>
        	<th>Bus No</th>
        	<td>${requestScope.print.busno }</td>
      	</tr>
      	
      	<tr>
        	<th>Source</th>
        	<td>${requestScope.bus.source }</td>
      	</tr>
      	
      	<tr>
        	<th>Destination</th>
        	<td>${requestScope.bus.destination }</td>
      	</tr>
      	
      	<%-- <tr>
        	<th>Departure Time</th>
        	<td>${requestScope.bus.departureTime }</td>
      	</tr> --%>
      	
    <%--   	<tr>
        	<th>Arrival Time</th>
        	<td>${requestScope.bus.arrivalTime }</td>
      	</tr> --%>
      	
      	<tr>
        	<th>Journey Date</th>
        	<td>${requestScope.print.journeyDate }</td>
       </tr>
       <tr>
        	<th>Booking Date</th>
        	<td>${requestScope.print.bookingDate }</td>
			</table><br><br>
        		<table border="1">
        				<tr>
        						<th>Passenger Name</th>
        						<th>Age</th>
        						<th>Gender</th>
        				</tr>
        				
        						<c:forEach items="${requestScope.pList}" var="pass">
        						<tr>
        								<td>${pass.passName}</td>
        								<td>${pass.age}</td>
        								<td>${pass.gender}</td>
        						</tr>
        						</c:forEach>
     
        		</table><br><br>
       
       <b>Email: ${requestScope.print.email }</b><br><br>
        <b>Cost:${requestScope.print.cost }</b><br><br>
        
    </div>
    <input type="button" value="Print Ticket" id="btnPrint" class="submit" />
     <input type = "submit" value= "Home" class="submit"> 
	</form>
	</div></div></div>



</body>
</html>