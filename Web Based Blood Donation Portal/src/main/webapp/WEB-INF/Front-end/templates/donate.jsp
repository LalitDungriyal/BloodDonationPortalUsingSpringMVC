<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Donate</title>

<%@include file="all_css_js.jsp"%>
<%@include file="portalStyle.jsp" %>

<style>
    
.donationform {
	display: flex;
	flex-direction: column;
	margin-top:-11vh;
}

.name {
	margin-bottom: 20px;
}

.name input {
	margin-left: 20px;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	outline: none;
}

.age {
	margin-bottom: 20px;
}

.age input {
	margin-left: 64px;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	outline: none;
}

.date {
	margin-bottom: 20px;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	outline: none;
}

.date input {
	margin-left: 61px;
	width: 172px;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	outline: none;
}

.group {
	
}

.group input {
	margin-left: 9px;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	outline: none;
}

.submitdetails {
	height: 22px;
	width: 78px;
	border: 1px solid #d3d6d8;
	margin-top: 85px;
	margin-left: 461px;
	transition-property: background-color;
	transition-duration: 1s;
}

.submitdetails a {
	text-decoration: none;
	color: black;
	text-align: center;
	padding-left: 16px;
}

.submitdetails:hover {
	background-color: #d3d6d8;
}
</style>
</head>
<body>

	<%@include file="usernameAndImage.jsp"%>

	<!--Header-->

	<div class="header">
		<div class="logoportal"></div>
		<div class="titleportal">
			<h1>Hello,<%=firstname %> <%=lastname %></h1>
			<p>welcome to your portal..</p>
		</div>
		<div class="search">
			<form action="searchInSite">
				<input type="text" placeholder="search" name="queryBox">
				<button type="submit">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</form>
		</div>
		<div class="loginportal">
			<button>
				<a href="/">Logout</a>
			</button>
		</div>
	</div>
	<div class="userpic"> <img src="data:image/jpg;base64, <%=b64 %>" /></div>

	<!--Body of page-->
	<div class="containerportal">
		<div class="menu">
			<div class="data">
				<a href="portal">Home</a>
			</div>
			<div class="data">
				<a href="#">Top Donors</a>
			</div>
			<div class="data">
				<a href="#">Change password</a>
			</div>
			<div class="data">
				<a href="#">Chats</a>
			</div>
			<div class="data">
				<a href="logout">Logout</a>
			</div>
		</div>
		<div class="other">
			<div class="navportal">
				<div class="navcontent ">
					<a href="portal">Home</a>
				</div>
				<div class="navcontent ">
					<a href="mydonations">My Donations</a>
				</div>
				<div class="navcontent">
					<a href="learnaboutdonation  activecl">LearnAboutDonation</a>
				</div>
				<div class="navcontent">
					<a href="events">Event List</a>
				</div>
				<div class="navcontent">
					<a href="profile">My profile</a>
				</div>
			</div>
			<div class="Home">
				<h2 style="padding-left: 0vw; font-family: 'Vollkorn', serif; margin-bottom: 12vh;">Donate blood</h2>
				<div>${message}</div>
				<%

				%>
				<div class="donationform">
					<form action="processdonationform" method="post">
						<div class="age">
							Username: <input type="text" name="username" required>
						</div>
						<div class="name">
							First Name: <input type="text" name="firstname" required>
							Last Name: <input type="text" name="lastname" required>
						</div>
						<div class="age">
							Age: <input type="text" name="age" required>
						</div>
						<div class="date">
							Date: <input type="date" name="date" required>
						</div>
						<div class="group">
							Blood-group: <input type="text" name="bloodgroup" required>
						</div>

						<div>
							<button style="cursor: pointer">submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer">

		<p>©copyright by Graphic Era hill university</p>
		<a href="/instagram"><div id="insta" class="footercontact"></div></a>
		<a href="/facebook"><div id="facebook" class="footercontact"></div></a>
		<a href="/twitter"><div id="twitter" class="footercontact"></div></a>
	</div>
</body>
</html>
