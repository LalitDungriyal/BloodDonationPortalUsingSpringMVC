<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>About Us</title>
	
	<%@include file="all_css_js.jsp" %>
	
	<style>
		.bodyabout{
			height:100vh;
			border:1px solid white;
			margin-top:10px;
			padding-bottom:10px;
		}
		.bodyabout h1{
			margin-top:30px;
			margin-left:60px;
			font-family: 'Josefin Sans', sans-serif;
			color:white;
			font-size:47px;

		}
		.bodyabout p{
			margin-top:30px;
			margin-left:60px;
			font-family: 'Josefin Sans', sans-serif;
			font-size:15px;
			color:white;
			padding:15px;
		}
		@media screen and (max-width:634px) {

			.bodyabout p{
			margin-top:30px;
			margin-left:60px;
			font-family: 'Josefin Sans', sans-serif;
			font-size:15px;
			color:white;
			padding:30px;
		}
		}
		@media screen and (max-width:634px) {

			.bodyabout h1{
			margin-top:30px;
			margin-left:60px;
			font-family: 'Josefin Sans', sans-serif;
			color:white;
			font-size:30px;

		}
			.bodyabout p{
			margin-top:30px;
			margin-left:60px;
			font-family: 'Josefin Sans', sans-serif;
			font-size:12px;
			color:white;
			padding:30px;
		}
		}
	</style>
</head>
<body>

	<%@include file="header_navbar.jsp" %>

	<!--Body of page-->
	<div class="bodyabout">
		<h1>ABOUT US</h1>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Expedita, quasi quia dolorem sapiente eos neque nihil rerum vitae omnis adipisci suscipit, eius, culpa repudiandae ut! Minima eveniet debitis eos nulla numquam assumenda sint repellat veritatis cum ullam, corporis, deserunt! Sequi ducimus earum, ea minima nemo repellendus delectus maxime vitae? Quae. Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Quam, fugit dolore ducimus incidunt nihil laborum aperiam, praesentium in sit delectus? Pariatur, maxime ad, quod sint odio aperiam iusto accusantium ducimus rem quis facere minima voluptatum sed, voluptatem quibusdam. Soluta suscipit unde accusantium eius minus odit vero aperiam fuga iure obcaecati voluptatum consequuntur ea et, quas velit nobis possimus architecto a sint nam, magnam dolores. Temporibus aliquid cum quaerat aspernatur ipsum quisquam voluptatem repellat consequuntur fugit iusto sit, laborum deleniti corrupti.</p>
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
