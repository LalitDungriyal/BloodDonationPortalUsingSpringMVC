<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Learn about donation</title>

<%@include file="all_css_js.jsp"%>
<%@include file="portalStyle.jsp" %>

<style>


.learn {
	background: url(./resources/images/images/learnaboutdonation.png);
	background-size: contain;
	background-position: center;
	background-repeat: no-repeat;
	height: 40vh;
	margin-top: 4px;
	width: 570px;
	margin-left: -24px;
}
</style>
</head>
<body>

	<%@include file="usernameAndImage.jsp" %>


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
			<form action="processLogoutForm" method="post">
				<input type="submit" class="buttonLogout" value="Logout" /><br />
			</form>
		</div>
	</div>
	<div class="userpic"> <img src="data:image/jpg;base64, <%=b64 %>" /></div>

	<!--Body of page-->
	<div class="containerportal">
		<div class="menu">
			<div class="data">
				<a href="#">Home</a>
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
			<form action="processLogoutForm" method="post">
				<div class="data">
					<button type="submit">Logout</button>
				</div>
			</form>
		</div>
		<div class="other">
			<div class="navportal">
				<div class="navcontent ">
					<a href="portal">Home</a>
				</div>
				<div class="navcontent ">
					<a href="mydonations">My Donations</a>
				</div>
				<div class="navcontent activecl">
					<a href="learnaboutdonation">LearnAboutDonation</a>
				</div>
				<div class="navcontent">
					<a href="events">Event List</a>
				</div>
				<div class="navcontent">
					<a href="profile">My profile</a>
				</div>
			</div>
			<div class="Home">
				<div class="learn"></div>
				<button>
					<a href="https://en.wikipedia.org/wiki/Blood_donation">More
						info</a>
				</button>
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
