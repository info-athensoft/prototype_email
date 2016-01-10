<%@ page language="java"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>

<!doctype html>

<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
 
<html class="no-js" lang="en"> <!--<![endif]-->
<head>
   <meta charset="utf-8" />
   
   <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
   
   <!-- Mobile viewport optimized: h5bp.com/viewport -->
   <meta name="viewport" content="width=device-width">

   <title>Athensoft</title>

   <meta name="robots" content="index, nofollow">
   <meta name="description" content="" />
   <meta name="keywords" content="" />
   <meta name="author" content="Athensoft"/>
   
   <!-- remove or comment this line if you want to use the local fonts -->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>

   <link rel="stylesheet" type="text/css" href="content/css/bootstrap.css">
   <link rel="stylesheet" type="text/css" href="content/css/bootstrap-responsive.css">
   <link rel="stylesheet" type="text/css" href="content/css/bootmetro.css">
   <link rel="stylesheet" type="text/css" href="content/css/bootmetro-tiles.css">
   <link rel="stylesheet" type="text/css" href="content/css/bootmetro-charms.css">
   <link rel="stylesheet" type="text/css" href="content/css/metro-ui-light.css">
   <link rel="stylesheet" type="text/css" href="content/css/icomoon.css">

   <!--  these two css are to use only for documentation -->
   <link rel="stylesheet" type="text/css" href="content/css/demo.css">
   <link rel="stylesheet" type="text/css" href="scripts/google-code-prettify/prettify.css">
   
   <link rel="stylesheet" type="text/css" href="content/slider-nav/extent/extent.css">

   <!-- Le fav and touch icons -->
   <link rel="shortcut icon" href="content/ico/favicon.ico">
   <link rel="apple-touch-icon-precomposed" sizes="144x144" href="content/ico/apple-touch-icon-144-precomposed.png">
   <link rel="apple-touch-icon-precomposed" sizes="114x114" href="content/ico/apple-touch-icon-114-precomposed.png">
   <link rel="apple-touch-icon-precomposed" sizes="72x72" href="content/ico/apple-touch-icon-72-precomposed.png">
   <link rel="apple-touch-icon-precomposed" href="content/ico/apple-touch-icon-57-precomposed.png">
  
   <!-- All JavaScript at the bottom, except for Modernizr and Respond.
      Modernizr enables HTML5 elements & feature detects; Respond is a polyfill for min/max-width CSS3 Media Queries
      For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
   <script src="scripts/modernizr-2.6.1.min.js"></script>
</head>


<body>

	<!-- 01. Navigation bar -->
	<jsp:include page="02_nav_acp_inc.html"></jsp:include>
	<!-- 01. End of Navigation bar -->

	<!-- message.jsp Content-404 -->
	<div class="hero-unit">
	     <h2>Test Page</h2>
	     <p><br/>Testing form validator</p>
	     <p>
	       <a class="btn btn-primary btn-large" href="index.jsp">
	         Back to home
	       </a>
	     </p>
	</div>
	<!-- End of message.jsp Content-404 -->

	<!-- 00. Divider -->
	<jsp:include page="00_divider_inc.html"></jsp:include>
	<!-- 00. End of Divider -->
	
	<div class="container-fluid">
		<div class="row-fluid">
	<div>
		<a href="#" onclick="test();">isEmptyString</a>
	
	</div>
	</div>
	</div>
	
	<!-- 00. Divider -->
	<jsp:include page="00_divider_inc.html"></jsp:include>
	<!-- 00. End of Divider -->

	<!-- 04. Bottom -->
	<jsp:include page="03_bottom_inc.html"></jsp:include>
	<!-- 04. End of Bottom -->
	
	<!-- 05. Footer -->
	<jsp:include page="04_footer_inc.html"></jsp:include>
	<!-- 05. End of Footer -->


	<!-- Scripts -->
	<!-- Grab Google CDN's jQuery. fall back to local if necessary -->
   	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
   	<script>
   		window.jQuery || document.write("__tag_97$44_\x3C/script>") ;
   	</script>
   	<script type="text/javascript" src="scripts/google-code-prettify/prettify.js"></script>
   	<script type="text/javascript" src="scripts/jquery.mousewheel.js"></script>
   	<script type="text/javascript" src="scripts/jquery.scrollTo.js"></script>
   	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
   	<script type="text/javascript" src="scripts/bootmetro.js"></script>
   	<script type="text/javascript" src="scripts/bootmetro-charms.js"></script>
   	<script type="text/javascript" src="scripts/demo.js"></script>
   	<script type="text/javascript" src="scripts/holder.js"></script>
   	<script type="text/javascript" src="scripts/local/validate/form_validator.js"></script>
   	<script type="text/javascript">
		//$(".metro").metro();
		//$(".carousel").carousel();
   	</script>
   	<!-- End of Scripts -->
</body>
</html>