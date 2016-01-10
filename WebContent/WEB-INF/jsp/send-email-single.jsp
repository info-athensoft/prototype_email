<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java"%>
<%@ page pageEncoding="utf-8"%>

<!doctype html>

<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
 
<html class="no-js" lang="en"> <!--<![endif]-->
<head>
   	<meta charset="utf-8" />
   	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
   
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
	
	<!-- local style -->
	<link rel="stylesheet" type="text/css" href="style/local/category.css">


   <!-- Le fav and touch icons -->
   <link rel="shortcut icon" href="content/ico/favicon.ico">
   <link rel="apple-touch-icon-precomposed" sizes="144x144" href="content/ico/apple-touch-icon-144-precomposed.png">
   <link rel="apple-touch-icon-precomposed" sizes="114x114" href="content/ico/apple-touch-icon-114-precomposed.png">
   <link rel="apple-touch-icon-precomposed" sizes="72x72" href="content/ico/apple-touch-icon-72-precomposed.png">
   <link rel="apple-touch-icon-precomposed" href="content/ico/apple-touch-icon-57-precomposed.png">
  
   <!-- All JavaScript at the bottom, except for Modernizr and Respond.
      Modernizr enables HTML5 elements & feature detects; Respond is a polyfill for min/max-width CSS3 Media Queries
      For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
   <script src="scripts/bootmetro/modernizr-2.6.1.min.js"></script>
   
   
</head>


<body>
	<!-- 01. Navigation bar -->
	<jsp:include page="../../02_nav_acp_inc.html"></jsp:include>
	<!-- 01. End of Navigation bar -->

	<!-- error.jsp Content-404 -->
	<div class="hero-unit">
	     <h2>cPanel - Email Sender</h2>
	     <p>sending email to a single user</p>
	     <p>
	       <a class="btn btn-primary btn-large" href="index.jsp">
	         Back to home
	       </a>
	     </p>
	</div>
	<!-- End of error.jsp Content-404 -->


	<!-- content -->
	<div class="container-fluid">
		<div class="row-fluid">		
		
		<div class="span5">	
			
			<div>
			<h3>Search</h3>
			<p>
				<input type="text" id="textSearch" value="" size="160"/><br/>
				<input type="button" id="buttonSearch" value="Search" class="btn btn-primary" onClick="search();">
			</p>
			</div>			
			
			<jsp:include page="../../00_divider_thin_inc.html"></jsp:include>
			
			<div>
			<h3>Update/Delete a class</h3>
			<p>
				<input type="button" id="buttonUpdateClass" value="Update" class="btn" onClick="updateClass();">
				<input type="button" id="buttonDeleteClass" value="Delete" class="btn" onClick="deleteClass();">
				<!-- 
				<input type="button" id="buttonCloseCreateClass" value="Hide" class="btn" onClick="closeUpdateClass();">
				 -->
			</p>
				<div id="classUpdator">
					<table>
						<tr>
							<td><label>Parent ID</label></td>
							<td><input type="text" id="u_parentId" name="parentId" readonly="readonly"/></td>
						</tr>
						<tr>
							<td><label>Class ID</label></td>
							<td><input type="text" id="u_classId" name="classId" readonly="readonly"/></td>
						</tr>
						<tr>
							<td><label>Class Code</label></td>
							<td>
								<select name="selectClassCode" id="u_classCodeSelect" onChange="updateClassCode(this);">		
									 <option value ="c00">Please choose a class</option>
									 <option value ="c00"> </option>
									 
									 <option value ="c01">c01: Abstraction</option>
									 <option value ="c0101">c0101: water</option>
									 <option value ="c0102">c0102: car</option>
									 <option value ="c00"> </option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td><label></label></td>
							<td><input type="text" id="u_classCode" name="classId"/></td>
						</tr>
						
						<tr>
							<td><label>Class Name</label></td>
							<td><input type="text" id="u_className" name="className"/></td>
						</tr>
						
						<tr>
							<td><label>Status</label></td>
							<td><select name="status" id="u_classStatusId">			
								 <option value ="1">Available</option>
								 <option value ="2">Not Available</option>
								 <option value ="5">Deleted</option>								 
								 </select>
				 			</td>
						</tr>
					</table>
					<input type="button" id="buttonUpdateSave" value="Update" class="btn btn-primary" onClick="updateSave();"/>
					<input type="button" id="buttonDeleteSave" value="Delete" class="btn btn-primary" onClick="deleteSave();"/>
					<input type="button" name="button" id="buttonUpdateCancel" value="Cancel" onClick="updateCancel();"/>					
				</div>
			</div>
			
			<jsp:include page="../../00_divider_thin_inc.html"></jsp:include>
			
			<div>
			<h3>Create a new class</h3>
			<p>
				<input type="button" id="buttonCreateClass" value="Create" class="btn" onClick="createClass();"/>
				<!--  
				<input type="button" id="buttonCloseCreateClass" value="Hide" class="btn" onClick="closeCreateClass();"/>
				-->
			</p>
				<div id="classCreator">
					<table>
						
						<tr>
							<td><label>Parent Class</label></td>
							<td>
								<select name="selectParentId" id="c_parentId" onChange="return;">		
									 <option value ="0">Top level class</option>
									 <option value ="1">Abstraction</option>									 
									 <option value ="4">Nature</option>
									 <option value ="8">Flower</option>
									 <option value ="18">Panoramic</option>
									 <option value ="19">Portrait</option>
									 <option value ="20">Travel</option>
									 <option value ="28">Wedding</option>
								</select>
							</td>
						</tr>
						<!--  
						<tr>
							<td><label>Class ID</label></td>
							<td><input type="text" id="c_classId" name="classId"/></td>
						</tr>-->
						<tr>
							<td><label>Class Name</label></td>
							<td><input type="text" id="c_className" name="className"/></td>
						</tr>
												
						<tr>
							<td><label>Status</label></td>
							<td><select name="status" id="c_classStatusId">
								 <option value ="1" selected="selected">Available</option>
								 <option value ="2">Not Available</option>
								 </select>
				 			</td>
						</tr>
					</table>
					<input type="button" id="buttonCreateSave" value="Save" class="btn btn-primary" onClick="createSave();">
					<input type="button" name="button" id="buttonCreateCancel" value="Cancel" onClick="createCancel();"/>					
				</div>
			</div>
			
			<jsp:include page="../../00_divider_thin_inc.html"></jsp:include>
			
			<div>
			<h3>Category status</h3>
			<ul>
				<li>1: Available</li>
				<li>2: Not available</li>
				<li>3: Discontinue</li>
				<li>4: Upcoming</li>				
				<li>5: Deleted</li>
			</ul>
			<br/>
			</div>
			
			</div> <!-- left column span of 4 -->					
			
			<!-- view section -->
			<div class="span7">			
				<div>
					<h3>View</h3>
					<p>
						<input class="btn btn-small" type="button" id="buttonViewAll" value="All" onClick="viewAllJSONArray();">
						
					</p>
					
				</div>
			
							
				<div id="data">	
				  <p>TEST AREA</p>
				  <p>
				  ${pageContext.request.contextPath}
				  </p>			
				</div>
				
				<!-- email test -->
				<div>
					<form action="send_email_single.do" method="post">
					<p>
						Destination : candatamtl@gmail.com
					</p>	
					<p>
						<textarea name="message_body" placeholder="input your message"></textarea>
					</p>
					<p>
						<input type="submit" value="Send message">
					</p>
					
					</form>
				
				</div>
				
			</div>
			<!-- end of view section -->		
			
					
			</div>
		</div>
	<!-- end of content -->

	
	
	<!-- 04. Footer -->
	<jsp:include page="../../04_footer_inc.html"></jsp:include>
	<!-- 04. End of Footer -->


	<!-- Scripts -->
	<!-- Grab Google CDN's jQuery. fall back to local if necessary -->
	<!-- 
   	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
   	 -->
   	<script type="text/javascript" src="scripts/google-code-prettify/prettify.js"></script>
   	<script type="text/javascript" src="scripts/jquery/jquery-1.8.2.min.js"></script>   	
   	<script type="text/javascript" src="scripts/jquery/jquery.mousewheel.js"></script>
   	<script type="text/javascript" src="scripts/jquery/jquery.scrollTo.js"></script>
   	<script type="text/javascript" src="scripts/bootmetro/bootstrap.min.js"></script>
   	<script type="text/javascript" src="scripts/bootmetro/bootmetro.js"></script>
   	<script type="text/javascript" src="scripts/bootmetro/bootmetro-charms.js"></script>
   	<script type="text/javascript" src="scripts/bootmetro/demo.js"></script>
   	<script type="text/javascript" src="scripts/bootmetro/holder.js"></script>
   	<script type="text/javascript" src="scripts/json/json2.js"></script>
   	<script type="text/javascript">
		//$(".metro").metro();
		//$(".carousel").carousel();

		//submit form script
		//function submitForm(targetURL){
			//var theform = document.form_login; 
			//theform.action = targetURL; 
			//theform.submit();
		//}		
   	</script>
   	
	<!-- local script of uploading -->
	<script type="text/javascript" src="scripts/local/category.js"></script>
   	<script type="text/javascript">
   		$(document).ready(function(){
   			//viewAllJSONArray();
   	   	});
	</script>   	
   	<!-- End of Scripts -->
   	
   	
</body>
</html>