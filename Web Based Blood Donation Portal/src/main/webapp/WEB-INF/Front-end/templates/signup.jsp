<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign up</title>
<!--<link rel="stylesheet" href="style.css">-->

<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href='<spring:url value="/resources/css/login.css"/>' type="text/css" />
<script src='<spring:url value="resources/js/script.js" />'></script>



<style>
.loginform input[type="password"] {
	outline: none;
	margin-top: 37px;
	width: 190px;
	height: 29px;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	margin-left: 10px;
	font-size: 13px;
	font-family: 'Josefin Sans', sans-serif;
}

#pass1 input[type="password"] {
	margin-left: 63px;
}

#pass2 {
	
}

#txt1 input[type="text"] {
	margin-left: 48px;
	border-left-style: none;
	border-top-style: none;
	border-right-style: none;
	width: 191px;
	outline: none;
}

#txt2 input[type="email"] {
	margin-left: 54px;
}

#txt2 {
	margin-top: 10px;
}

.titletext {
	margin-left: -108px;
	margin-top: -77px;
	padding-bottom: 59px;
	font-size: 36px;
	font-weight: bold;
	color: green;
}
.label{
	font-size:16px;
	height:11px;
}
.input{
	height:26px;
}
</style>
</head>
<body>

	<div class="backbutton">
		<button>
			<a href="home">&#10094</a>
		</button>
	</div>

	<div class="container" >
		<div class="card mx-auto mt-2 mb-2" style="width:70%;" >
			<div class="card-body" >
			
			<div class="container text-center"><h1>Sign-up Form</h1></div>
			
				<form action="processRegistrationForm" method="post">
					<div class="form-group">
						<label for="exampleInputUsername" class="label">Enter Username</label> <input
							type="text" class="form-control input" id="exampleInputUsername"
							placeholder="Enter Username" name="username">
					</div>
					<div class="form-group d-flex">
						<label for="exampleInputFname" class="label">First-name</label> <input
							type="text" class="form-control input" style="width:15vw" id="exampleInputUsername"
							placeholder="Enter first name" name="fname">
							
							<label for="exampleInputLname" class="label" style="margin-left:10vw">Last-name</label> <input
							type="text" class="form-control input" style="width:15vw" id="exampleInputUsername"
							placeholder="Enter last" name="lname">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail" class="label">Enter Email</label> <input
							type="email" class="form-control input" id="exampleInputEmail"
							placeholder="Enter Email" name="useremail">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail" class="label">Enter BloodGroup</label> <input
							type="text" class="form-control input" id="exampleInputEmail"
							placeholder="Enter Email" name="bloodgroup">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail" class="label">Enter Age</label> <input
							type="text" class="form-control input" id="exampleInputEmail"
							placeholder="Enter age" name="age">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1" class="label">Create Password</label> <input
							type="password" class="form-control input" id="exampleInputPassword1"
							placeholder="Password" name="password">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword2" class="label">Confirm Password</label> <input
							type="password" class="form-control input" id="exampleInputPassword2"
							placeholder="Password" name="conpassword">
					</div>
					
					<div class="container text-center">
					<button type="submit" class="btn btn-success">Submit</button>
					</div>
					
					<div class="container text-center">
						<a href="login">Back to Login</a>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
