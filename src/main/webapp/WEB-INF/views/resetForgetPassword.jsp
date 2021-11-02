<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
    <style><%@include file="/WEB-INF/views/css/forgetPassword.css"%></style>
</head>
<body>
    <div class="container">
     <div class = "outer-box">
         <div class = "upper-forgot-password">
             <h2 align = "center">Reset Password</h2>
         </div>
         <div class = "lower-forgot-password">
             <form action="resetForgetPassword" method="POST" onsubmit="return popUp()">
             	<div class = "row-padding">
                     <label>Email</label>
                     <input type="text" placeholder="Enter email" name="email">
                 </div>
                  <div class = "row-padding">
                     <label>New Password</label>
                     <input type="text" placeholder="Enter New Password" id="pass">
                 </div>
                 <div class = "row-padding">
                    <label>Confirm Password</label>
                    <input type="text" placeholder="Confirm Password" name="password" id="confPass">
                 </div>
                 <div class = "row-padding buttons">
                    <input type = "submit" name="Submit">
                    <button><a href="index">Cancel</a></button>
                 </div>
             </form>
         </div>
     </div>
</div>

<script>
	function popUp() {
		var pass = document.getElementById("pass").value;
		var confPass = document.getElementById("confPass").value;
		
		if(pass != confPass) {
			alert("Password doesn't match");
			return false;
		}
		
		alert("Password changed successfully");
		return true;
	}
</script>
</body>
</html>