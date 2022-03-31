<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Blood portal:Home</title>
	
	<%@include file="all_css_js.jsp" %>
	
	
	<style>
		#load{
			width: 100%;
  			height: 100%;
  			top: 0;
  			left: 0;
  			position: fixed;
  			display: block;
  			opacity: 1;
  			background-color: #fff;
  			z-index: 99;
  			text-align: center;
		}
		.backgroundimg{
			background:url(../images/logo/logo.png);
			background-repeat: no-repeat;
			background-position:center;
			animation:loading 1s ;
			animation-iteration-count: infinite;

		}

		@keyframes loading {
			0%{
				transform:scale(1);
			}
			50%{
				transform:scale(1.2);
			}
			100%{
				transform:scale(1);
			}

		}

		@media screen and (max-width: 800px) {
			.main h1{
				text-align: center;
				font-family: 'Josefin Sans', sans-serif;
				color:white;
				font-size:42px;
			}
			.main p{
				margin-top:100px;
				text-align:center;
				font-family: 'Josefin Sans', sans-serif;
				color:white;
				animation:fade 2s;
				font-size:12px;
			}

			.covid h1{
				font-family: 'Josefin Sans', sans-serif;
				font-size:40px;

			}
			.covid p{
				font-family: 'Josefin Sans', sans-serif;
				font-size:13px;

			}

			.Getstarted h1{
				margin-left: 155px;
    			padding-top: 20px;
    			font-family:monospace;
    			color:white;
    			font-size:30px;

			}
			.Getstarted p{
    			padding-top: 51px;
    			background-color: white;
    			height: 22vh;
    			width: 41vw;
    			opacity: 0.6;
    			padding-left: 20px;
    			text-align: center;
    			font-family: 'Josefin Sans', sans-serif;
    			font-size:12px;
			}

			.Getstarted button a{
				text-decoration:none;
				color:white;
				font-family: 'Josefin Sans', sans-serif;
				font-size:12px;
			}
		}


		@media screen and (max-width: 510px) {
			.Getstarted p {
    				padding-top: 51px;
    				background-color: white;
    				height: 22vh;
    				width: 50vw;
    				opacity: 0.6;
    				padding-left: 20px;
    				text-align: center;
    				font-family: 'Josefin Sans', sans-serif;
    				font-size: 12px;
				}
			.covid h1 {
    			font-family: 'Josefin Sans', sans-serif;
    			font-size: 25px;
			}
			.main h1 {
    			text-align: center;
    			font-family: 'Josefin Sans', sans-serif;
    			color: white;
    			font-size: 24px;
    			padding-top: 39px;
			}
			.main p {
   				 margin-top: 77px;
   				 text-align: center;
   				 font-family: 'Josefin Sans', sans-serif;
   				 color: white;
   				 animation: fade 2s;
   				 font-size: 12px;
			}
			.main{
    			width:95%;
    			height:400px;
    			border:2px solid white;
			}

			.section{
				width:27%;
				height:400px;
				margin-left:10px;
				background-color:white;
				opacity:0.6;
				display:none;
			}
			#load{
				width: 100%;
  				height: 100%;
  				top: 0;
  				left: 0;
  				position: fixed;
  				display: block;
  				opacity: 1;
  				background-color: #fff;
  				z-index: 990;
  				text-align: center;
			}
			.backgroundimg{
				background:url("../images/logo/logo.png");
				background-repeat: no-repeat;
				background-position:center;
				animation:loading 1s ;
				animation-iteration-count: infinite;

			}

		}
		@media screen and (max-width:458px) {
			.Getstarted h1 {
   					 margin: auto;
   					 padding-top: 20px;
   					 font-family: monospace;
   					 color: white;
   					 font-size: 29px;
    			}
			.Getstarted button a {
    			text-decoration: none;
    			color: white;
    			font-family: 'Josefin Sans', sans-serif;
    			font-size: 10px;
			}
		}

	</style>
</head>
<body>


	<div id="load" class="backgroundimg"></div>


	<%@include file="header_navbar.jsp" %>




	<!--Body of page-->
	<div class="bodyc">

	<div class="main">
		<h1>WELCOME !!</h1>
		<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid reprehenderit impedit in delectus iure saepe atque praesentium officiis, alias natus explicabo sint expedita rem cumque modi numquam consequatur placeat quibusdam earum molestias! Lorem Lorem ipsum dolor sit, amet, consectetur adipisicing elit. Aut suscipit voluptatum, animi inventore nesciunt accusamus quam maiores eos. Repellendus, obcaecati?</p>
		<p><button>Click to know more</button></p>
	</div>
	<div class="section">
		<p>...EXPLORE...</p>
		<ul>
			<li><a href="signup">Start donating</a></li>
			<li><a href="about">know about us</a></li>
			<li><a href="">Recent posts</a></li>
			<li><a href="">How to donate?</a></li>
			<li><a href="">Covid 19 Updates</a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
		</ul>
	</div>
	</div>

	<div class="covid">
		<h1>Covid-19 Antibody Testing On All Domains</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem minima deserunt reiciendis iste ipsam laudantium, quidem temporibus labore, nesciunt illo repellat excepturi, doloribus architecto perspiciatis? Quam doloremque sapiente voluptatum ullam nesciunt nemo consequatur soluta?</p>
		<button><strong>Learn More</strong></button>
	</div>


	<div class="Getstarted">

			<h1>Just one step</h1>


		<p>
			Lorem ipsum dolor sit amet consectetur adipisicing, elit. Tempora magnam non quas aperiam cum voluptate vero optio magni modi quibusdam, qui quos explicabo quisquam eius possimus temporibus, esse mollitia sapiente eligendi asperiores?
		</p>


		<button>
			<a href="signup">Get started</a>
		</button>
			</div>
	</div>
	<!--footer-->
	<div class="footer">

		<p>©copyright by Graphic Era hill university</p>
		<a href="instagram"><div id="insta" class="footercontact"></div></a>
		<a href="facebook"><div id="facebook" class="footercontact"></div></a>
			<a href="twitter"><div id="twitter" class="footercontact"></div></a>
	</div>
</body>
</html>
