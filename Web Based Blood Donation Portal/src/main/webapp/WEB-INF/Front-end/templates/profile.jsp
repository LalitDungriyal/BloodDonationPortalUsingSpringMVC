<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Profile</title>

<%@include file="all_css_js.jsp"%>
<%@include file="portalStyle.jsp" %>

<style>

.profiledata {
	display: flex;
	margin-left: 60px;
	margin-top: 3vh;
	font-size: 20px;
}

.staticdata {
	border: 1px solid grey;
	height: 30vh;
	width: 60%;
}

.imagechanger {
	border: 1px solid grey;
	margin-left: 14vw;
	margin-right:2vw;
	height: 30vh;
	width: 40%;
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
			
			
			<%! 
			String fullname;
			String email;
			String bloodgroup;
			%>
			<% 
			
				String name=(String)session.getAttribute("logininfo");
			
				System.out.println(name);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/bloodportal";
				String username = "root";
				String password = "root";
				String query = "select * from user where username = "+"\""+name+"\"";
				System.out.println(query);
				Connection conn = DriverManager.getConnection(url, username, password);
				Statement stmt = conn.createStatement();
				
				ResultSet rs = stmt.executeQuery(query);

				
				
				while(rs.next())
				{
					fullname=rs.getString("fname")+" "+rs.getString("lname");
					email=rs.getString("useremail");
					bloodgroup=rs.getString("bloodgroup");
				}
				
				}catch (Exception e) {
					e.printStackTrace();
					}
				
			
			%>
				<div class="profiledata">
					<div class="staticdata">
						<div>Username: &nbsp;&nbsp;&nbsp;&nbsp;<%=name %></div>
						<div>Name: &nbsp;&nbsp;&nbsp;&nbsp;<%=fullname %></div>
						<div>Email: &nbsp;&nbsp;&nbsp;&nbsp;<%=email %></div>
						<div>Bloodgroup: &nbsp;&nbsp;&nbsp;&nbsp;<%=bloodgroup %></div>
					</div>
					<div class="imagechanger" >
						<div>User profile-image</div>
						<form action="uploadImage" method='POST' enctype="multipart/form-data">
							 <input type="file"
								name='profile' /><br>
						<button type="submit" style="margin-left:0px">Upload</button>	
						</form>
					</div>
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
