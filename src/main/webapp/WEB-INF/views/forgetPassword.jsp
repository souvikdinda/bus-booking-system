<!DOCTYPE <!DOCTYPE html>
<html>
<head>
    <title>Forget Password</title>
    <style><%@ include file="/WEB-INF/views/css/forgetPassword.css"%></style>
</head>
<body>
    <div class="container">
     <div class = "outer-box">
         <div class = "upper-forgot-password">
             <h2 align = "center">Forgot Password</h2>
         </div>
         <div class = "lower-forgot-password">
             <form action = "loginPassword" method = "POST" onsubmit="return popUp()">
                 <div class = "row-padding">
                     <label>Email</label>
                     <input type="text" placeholder="Enter Email" name="email">
                 </div>
                 <div class = "row-padding buttons">
                    <input type="submit" value = "Submit">
                    <button><a href="login">Cancel</a></button>
                 </div>
             </form>
         </div>
     </div>
</div>

	<script>
		function popUp() {
			alert("Password reset link has been sent successfully to your E-mail address");
			return true;
		}
	</script>
</body>
</html>