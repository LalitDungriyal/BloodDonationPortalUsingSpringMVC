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
<title>My donations</title>

<%@include file="all_css_js.jsp"%>
<%@include file="portalStyle.jsp" %>

<style>

.tablecss {
	margin-top: 100px;
}

.tablecss table, tr, td {
	border: 1px solid black;
	text-align: center;
}

.tablecss table {
	width: 100%;
	border-collapse: collapse;
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
				<div class="navcontent activecl">
					<a href="mydonations">My Donations</a>
				</div>
				<div class="navcontent">
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

				<div class="tablecss">
					<table>
						<thead>
							<tr>
								<td>ID</td>
								<td>UserName</td>
								<td>Date</td>
								<td>Amount</td>
								<td>Bloodgroup</td>
								<td>EventName</td>
							</tr>
						</thead>
						<tbody>
							<%
							
								Cookie[] cookies = request.getCookies();
							
								String name="";
							
								for(Cookie cookie:cookies)
								{
									if(cookie.getName().equals("login")==true)
									{
										System.out.println(cookie.getValue());
										name=cookie.getValue();
										break;
									}
								}
							
							try {
								Class.forName("com.mysql.jdbc.Driver");
								String url = "jdbc:mysql://localhost:3306/bloodportal";
								String username = "root";
								String password = "root";
								String query = "select * from donations where username = "+"\""+name+"\"";
								Connection conn = DriverManager.getConnection(url, username, password);
								Statement stmt = conn.createStatement();
								ResultSet rs = stmt.executeQuery(query);
								
								while (rs.next()) {
							%>
							<tr>
								<td>
									<%=rs.getInt("id")
									%>
								</td>
								<td>
									<%=rs.getString("username")
									%>
								</td>
								<td>
									<%=rs.getString("date")
									%>
								</td>
								<td>
									<%=rs.getString("amount")
									%>
								</td>
								<td>
									<%=rs.getString("bloodgroup")
									%>
								</td>
								<td>
									<%=rs.getString("event")
									%>
								</td>
							</tr>

							<%
							}
							%>
						
					</table>
					<%
					rs.close();
					stmt.close();
					conn.close();
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
					</tbody>
					</table>
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
