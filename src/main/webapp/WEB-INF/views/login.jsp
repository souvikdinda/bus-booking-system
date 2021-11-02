<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<DOCTYPE ! html>
<head>
<title>Login/Signup</title>
<style><%@ include file="/WEB-INF/views/css/login.css"%></style>
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

	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form action="register"  method="post" onsubmit="return validate()">
				<h1>Create Account</h1>
					<input type="text" placeholder=" Frist Name" name="firstName" id="fname" /> 
					<input type="text" placeholder="Last Name" name="lastName" id="lname" /> 
					<input type="email" placeholder="Email" name="email" required /> 
					<input type="number" placeholder="Contact" maxlength="10" name="contactNo" id="contact"  /> 
					<input placeholder="Date of Birth" type="text" name="dateOfBirth" id="dob" required> 
					<select name="gender" required>
						<option value="" disabled selected hidden>Gender</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="Others">Others</option>
					</select> 
					<input type="password" placeholder="Password" id="pass" /> 
                    <input type="password" placeholder="Confirm Password" name="password" id="confPass" /> 
                    <input type="hidden" value="0" name="wallet">
					<input type="submit" value="Sign Up">
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form action="login" , method="post">
				<h1>Sign in</h1>
				<p style="color: red">${invalid}</p>
				<p style="color:black">${success }</p>
				<input type="email" placeholder="Email" name="email" required /> 
				<input type="password" placeholder="Password" name="password" required />
				<a href="forgetPassword">Forgot your password?</a> 
				<input type="submit" value="Sign In">
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To book please login with your email and password</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Hello, Friend!</h1>
					<p>Enter your personal details and start exploring our buses
						for reaching destinations</p>
					<button class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>

	<script>
	const signUpButton = document.getElementById('signUp');
	const signInButton = document.getElementById('signIn');
	const container = document.getElementById('container');

	signUpButton.addEventListener('click', () => {
		container.classList.add("right-panel-active");
	});
	
	signInButton.addEventListener('click', () => {
		container.classList.remove("right-panel-active");
	});

	function validate(){
		var fname = document.getElementById("fname").value;
	    var lname = document.getElementById("lname").value;
	    var pass = document.getElementById("pass").value;
	    var confPass = document.getElementById("confPass").value;
		var contact = document.getElementById("contact").value;
		var contactRegex = /^\d{10}$/;
	    var passRegex = /^((?!.*[\s])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*?/])(?=.*\d).{8,})$/;
	    var blankRegex = /(.*[\s])/;

	    if(fname == "" || blankRegex.test(fname)) {
	        alert("Please enter first name");
	        return false;
	    }

	    if(lname == "" || blankRegex.test(lname)) {
	        alert("Please enter last name");
	        return false;
	    }

	    if(!contact.match(contactRegex)) {
	        alert("Enter valid 10 digits contact number");
	        return false;
	    }

	    if(pass == "" || blankRegex.test(pass)) {
	        alert("Please enter password");
	        return false;
	    }

	    if(confPass == "" || blankRegex.test(confPass)) {
	        alert("Please enter confirm password");
	        return false;
	    }

	    if(!passRegex.test(pass)) {
	        alert("Password should contain following things:\n1. Minimum 1 lower case character\n2. Minimum 1 upper case character number\n3. Minimum 1 special character\n4. Minimum 1 numeric digit");
	        return false;
	    }

	    if(pass != confPass) {
	        alert("Password does not match");
	        return false;
	    }

	    return true;
	}
	</script>
<script>
$(document).ready(function() {

    $("#dob").datepicker({
    	dateFormat: "dd-mm-yy",
        changeMonth: true,
        changeYear: true,
        maxDate: "-16Y"
    });

});

</script>

</body>
</html>