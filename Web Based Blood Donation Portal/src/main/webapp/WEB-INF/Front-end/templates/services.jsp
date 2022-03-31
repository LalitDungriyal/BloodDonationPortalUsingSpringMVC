<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Services</title>
	
	<%@include file="all_css_js.jsp" %>
	

	<style>
		.bodypart{
			display:flex;
			/*margin-left: 154px;*/
    		margin-top: 30px;
    		/*margin:auto;*/
    		flex-wrap:wrap;
		}
		.container{
			height: 442px;
    		width: 209px;
   			border: 2px solid white;
    		margin-left: 20px;
    		margin-top:20px;

		}
		.container button{
    		    background: none;
    			margin-left: 50px;
    			border-style: none;
    			border: 1px solid black;
    			cursor: pointer;
    			transition: transform 0.5s;
    			border-radius: 2px;

		}
		#button1{
			margin-top:4px;
		}
		#button2{
			margin-top:20px;
		}
		#button3{
			margin-top:50px;
		}
		#button4{
			margin-top:20px;
		}
		#button5{
			margin-top:8px;
		}
		.container button:hover
		{
			transform:scale(1.2);
		}
		.container h1{
			font-family: 'Josefin Sans', sans-serif;
			padding:20px;

		}
		.container p{
			font-family: 'Josefin Sans', sans-serif;
			color:white;
			padding:20px;
		}

		@media screen and (max-width:1170px) {


			.container{
			height: 442px;
    		width: 209px;
   			border: 2px solid white;
    		margin-left: 10px;
    		margin-top:20px;
    	}
    		#button1{
    			margin-top:4px;
    		}

    		#button2{
    			margin-top:21px;
    		}

    		#button3{
    			margin-top:54px;
    		}

    		#button4{
    			margin-top:22px;
    		}

    		#button5{
    			margin-top:12px;
    		}

		}
		@media screen and (max-width:1120px) {

			.container{
			height: 442px;
    		width: 209px;
   			border: 2px solid white;
    		margin-left: 0px;
    		margin-top:20px;
    	}
    		#button1{
    			margin-top:4px;
    		}

    		#button2{
    			margin-top:21px;
    		}

    		#button3{
    			margin-top:54px;
    		}

    		#button4{
    			margin-top:22px;
    		}

    		#button5{
    			margin-top:12px;
    		}
		}
		@media screen and (max-width:1070px) {
			.bodypart{
				display:flex;
				/*margin-left: 154px;*/
    			margin-top: 30px;
    			/*margin:auto;*/
    			flex-wrap:wrap;
    			padding-left:70px;
			}
			.container{
			height: 374px;
    		width: 209px;
   			border: 2px solid white;
    		margin-left: 10px;
    		margin-top:20px;
    		}
    	    #button1{
    	    	margin-top: 4px;
			}
			#button2{
				margin-top:21px;
			}
			#button3{
				margin-top:54px;

			}
			#button4{
				margin-top:22px;
			}
			#button5{
				margin-top: 12px;
			}
			.container h1{
			margin-left:40px;
			font-family: 'Josefin Sans', sans-serif;
			color:white;
			font-size:40px;

		}
			.container p{
			color:white;
			font-family: 'Josefin Sans', sans-serif;
			padding:20px;
			font-size:17px;
		}

		}
		@media screen and (max-width:800px) {
			.bodypart{
				display:flex;
				/*margin-left: 154px;*/
    			margin-top: 30px;
    			/*margin:auto;*/
    			flex-wrap:wrap;
    			padding-left:70px;
			}
			.container{
			height: 350px;
    		width: 350px;
   			border: 2px solid white;
    		margin-left: 10px;
    		margin-top:20px;
    		}
    		#button1{

			}
			#button2{

			}
			#button3{

			}
			#button4{

			}
			#button5{

			}
		}
		.container h1{
			margin-left:40px;
			font-family: 'Josefin Sans', sans-serif;
			color:white;
			font-size:30px;

		}
		.container p{
			color:white;
			font-family: 'Josefin Sans', sans-serif;
			padding:20px;
			font-size:13px;
		}
		}
		.container button:hover{
			transform:scale(1.1);
		}
		.container h1{
			margin-left:40px;
			font-family: 'Josefin Sans', sans-serif;
			color:white;

		}
		.container p{
			color:white;
			font-family: 'Josefin Sans', sans-serif;
			padding:20px;
		}

	</style>
</head>
<body>



	<%@include file="header_navbar.jsp" %>

	<!--Body of page-->
	<div class="bodypart">
		<div class="container">
			<h1>Blood Donation</h1>
			<p>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Sit aliquam praesentium et corporis recusandae illum odio, consectetur, magni natus? Laudantium omnis a unde doloribus doloremque error est esse, cupiditate necessitatibus ducimus provident.</p>
			<button id="button1">Donate blood</button>
		</div>
		<div class="container">
			<h1>Blood Required</h1>
			<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nisi cupiditate optio rerum itaque sunt, esse commodi et, assumenda omnis hic dolor similique mollitia quibusdam rem atque id? Nam sequi voluptatem eligendi, recusandae!</p>
			<button id="button2">Required blood</button>
		</div>
		<div class="container">
			<h1>Covid-19</h1>
			<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Saepe vero velit accusamus iure veniam exercitationem assumenda, nulla excepturi at, quos similique quod sint quaerat magni quibusdam voluptatem veritatis quam dolores dolor. Facere.</p>
			<button id="button3">Covid-19</button>
		</div>
		<div class="container">
			<h1>Plasma Donation</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit quibusdam quisquam eveniet, neque assumenda, magni quia quos sequi error facere modi eius provident. Eos eum rerum atque assumenda ratione, architecto natus, maxime.</p>
			<button id="button4">Donate plasma</button>
		</div>
		<div class="container">
			<h1>Plasma Required</h1>
			<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat numquam, ratione nihil placeat illo expedita quae suscipit blanditiis, optio asperiores praesentium ab ipsum, veniam laboriosam, aperiam molestiae excepturi soluta saepe odit iste.</p>
			<button id="button5">Required plasma</button>
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
