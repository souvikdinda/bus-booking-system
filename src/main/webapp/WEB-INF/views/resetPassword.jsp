
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
             <form action="changePass" method="POST">
             <center><p style="color:red">${invalid}</p></center>
                  <div class = "row-padding">
                     <label>Old Password</label>
                     <input type="text" placeholder="Enter Old Password" name="oldp">
                 </div>
                 <div class = "row-padding">
                    <label>New Password</label>
                    <input type="text" placeholder="Enter New Password" name="newp">
                 </div>
                 <div class = "row-padding buttons">
                    <input type = "submit" name="Submit">
                    <button><a href="home">Cancel</a></button>
                 </div>
             </form>
         </div>
     </div>
</div>
</body>
</html>