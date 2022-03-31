
<%@include file="all_css_js.jsp"%>

<!--Header-->

<div class="header">
	<div class="logo"></div>
	<div class="title">
		<h1>Blood Donation Portal</h1>
		<p>An exclusive blood donation portal by Graphic Era</p>
	</div>
	<div class="search">
		<form action="searchInSite">
			<input type="text" placeholder="search" name="queryBox"> <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
		</form>
	</div>
	<div class="login">
		<button>
			<a href="login">Login</a>
		</button>
		<div class="loginpic"></div>
	</div>
</div>

<!--Navbar-->
<div class="imgback">
	<div class="nav">


		<%
		String url = request.getRequestURL().toString();

		StringBuilder sb = new StringBuilder("");

		int n = url.length() - 5;
		while (url.charAt(n) != '/') {
			sb.append(url.charAt(n));
			n--;
		}

		String curpage = sb.reverse().toString();

		System.out.println(curpage);

		if (curpage.equals("index") == true) {
		%>

		<ul>
			<li id="home" class="item active"><i class="fa-solid fa-house"></i><a
				href="home">Home</a></li>
			<li id="services" class="item"><i
				class="fa-solid fa-floppy-disk"></i><a href="services">Services</a></li>
			<li id="gallary" class="item"><i class="fa-brands fa-envira"></i><a
				href="gallary">Gallary</a></li>
			<li id="about" class="item"><i class="fa-solid fa-address-card"></i><a
				href="about">About Us</a>
				<p></p></li>
		</ul>


		<%
		} else if (curpage.equals("services") == true) {
		%>

		<ul>
			<li id="home" class="item"><i class="fa-solid fa-house"></i><a
				href="home">Home</a></li>
			<li id="services" class="item active"><i
				class="fa-solid fa-floppy-disk"></i><a href="services">Services</a></li>
			<li id="gallary" class="item"><i class="fa-brands fa-envira"></i><a
				href="gallary">Gallary</a></li>
			<li id="about" class="item"><i class="fa-solid fa-address-card"></i><a
				href="about">About Us</a>
				<p></p></li>
		</ul>

		<%
		} else if (curpage.equals("gallary") == true) {
		%>

		<ul>
			<li id="home" class="item"><i class="fa-solid fa-house"></i><a
				href="home">Home</a></li>
			<li id="services" class="item"><i
				class="fa-solid fa-floppy-disk"></i><a href="services">Services</a></li>
			<li id="gallary" class="item active"><i
				class="fa-brands fa-envira"></i><a href="gallary">Gallary</a></li>
			<li id="about" class="item "><i class="fa-solid fa-address-card"></i><a
				href="about">About Us</a>
				<p></p></li>
		</ul>


		<%
		} else {
		%>

		<ul>
			<li id="home" class="item"><i class="fa-solid fa-house"></i><a
				href="home">Home</a></li>
			<li id="services" class="item"><i
				class="fa-solid fa-floppy-disk"></i><a href="services">Services</a></li>
			<li id="gallary" class="item"><i class="fa-brands fa-envira"></i><a
				href="gallary">Gallary</a></li>
			<li id="about" class="item active"><i
				class="fa-solid fa-address-card"></i><a href="about">About Us</a>
				<p></p></li>
		</ul>



		<%
		}
		%>

	</div>