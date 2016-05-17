
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>

<!-- Website Title & Description for Search Engine purposes -->
<title>DIGINEXT TTT MUSIC HUB WEBSITE MUNIESWARAN</title>
<meta name="description" content="">

<!-- Mobile viewport optimized -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Bootstrap CSS -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/includes/css/bootstrap-glyphicons.css" 	rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/includes/css/styles.css" rel="stylesheet">

<!-- Include Modernizr in the head, before any other Javascript -->
<script src="resources/includes/js/modernizr-2.6.2.min.js"></script>
	<!-- All Javascript at the bottom of the page for faster page loading -->
	<!-- First try for the online version of jQuery-->
	<script src="http://code.jquery.com/jquery.js"></script>
	<!-- If no online access, fallback to our hardcoded version of jQuery -->

	<script>
		window.jQuery
				|| document
						.write('<script src="resources/includes/js/jquery-1.8.2.min.js"><\/script>')
	</script>

	<!-- Bootstrap JS -->
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- Custom JS -->
	<script src="resources/includes/js/script.js"></script>

</head>
<body>


	<div class="container" id="main">

		<div class="navbar navbar-fixed-top">
			<div class="container">


				<div class="nav-collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="./">Home</a></li>
						<li><a href="aboutus">ABOUT US</a></li>
						<li><a href="#">HELP </a></li>
						<li><a href="signup"><span
								class="glyphicon glyphicon-user"></span> SignUp </a></li>
						<li><a href="login"><span class="glyphicon glyphicon-off"></span>
								Login </a></li>
					</ul>
				</div>

			</div>
			<!-- end Container -->

		</div>
		<!-- Nav bar Ends -->


		<br />
		<br /> <br />
		<br />

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/images/sl_1.jpg" alt="img1">
				</div>

				<div class="item">
					<img src="resources/images/sl_2.jpg" alt="img1">
				</div>

				<div class="item">
					<img src="resources/images/sl_3.jpg" alt="img1">
				</div>

				<div class="item">
					<img src="resources/images/sl_4.jpg" alt="img1">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<br />
		
		<div class="container">
		<h3><a href="productinfo?catg=ALL">All Products</a></h3>
		</div>
		<div class="row">
			<div class="col-sm-4">
		<a href="productinfo?catg=TRENDING">		<img src="resources/images/TRENDING.jpg" height="300" width="300" /></a>
			</div>
			<div class="col-sm-4">
		<a href="productinfo?catg=DEVOTIONAL">		<img src="resources/images/DEVOTIONAL.jpg" height="300" width="300" /></a>
			</div>
			<div class="col-sm-4">
			<a href="productinfo?catg=POP">	<img src="resources/images/POP.jpg" height="300" width="300" /></a>
			</div>
		</div>
	</div>
	<!-- Main Container Div Ends -->


	<footer> </footer>


</body>
</html>