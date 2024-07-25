<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Green Forest  
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20110306

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Register</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #FF00FF}
.style4 {color: #990099}
-->
</style>

</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li><a href="index.html">Home</a></li>
            <li><a href="C_Login.jsp">CLOUD SERVER</a></li>
            <li><a href="KDC_Login.jsp">KDC</a></li>
			<li class="current_page_item"><a href="U_Login.jsp">USERs</a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="header">
		<div id="logo">
			<h1><a href="#">A Fast Nearest Neighbor Search Scheme over Outsourced Encrypted Medical Images</a></h1>
	  </div>
	</div>
	<!-- end #header -->
	<div id="page">
	<div id="page-bgtop">
	<div id="page-bgbtm">
		<div id="content">
			<div class="post">
				<h2 class="title style3"><span class="style3">Welcome</span> <span class="style3">to</span> <span class="style3">User</span> <span class="style3">Register</span></h2>
				<p class="title style3"><img src="images/Register.jpg" alt="" width="390" height="93" /></p>
				<p class="title style3">&nbsp;</p>
				<form action="U_RegIns.jsp" method="post" id="" enctype="multipart/form-data">
                  <label for="name"> <span class="style4">Select User Type <br />
                  </span></label>
                  <p class="style4"><select name="utype">
          <option>---Select--</option>
          <option>Data Users</option>
          <option>Data Owner</option>
        </select></p>
                  <span class="style4">
                  <label for="label"></label>
                  </span>
                  <label for="name"><span class="style4">User Name (required)<br />
                    </span></label>
                  <p class="style4">
                    <input id="name" name="userid" class="text" />
                  </p>
                  <span class="style4">
                  <label for="password">Password (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input type="password" id="password" name="pass" class="text" />
                  </p>
                  <span class="style4">
                  <label for="email">Email Address (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="email" name="email" class="text" />
                  </p>
                  <span class="style4">
                  <label for="mobile">Mobile Number (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="mobile" name="mobile" class="text" />
                  </p>
                  <span class="style4">
                  <label for="address">Your Address<br />
                  </label>
                  </span>
                  <p class="style4">
                    <textarea name="address" cols="50" id="address"></textarea>
                  </p>
                  <span class="style4">
                  <label for="dob">Date of Birth (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="dob" name="dob" class="text" />
                  </p>
                  <span class="style4">
                  <label for="gender">Select Gender (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <select id="s1" name="gender" class="text">
                      <option>-Select-</option>
                      <option>Male</option>
                      <option>Female</option>
                    </select>
                  </p>
                  <span class="style4">
                  <label for="pincode">Enter Pincode (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="pincode" name="pincode" class="text" />
                  </p>
                  <span class="style4">
                  <label for="location">Enter Location (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="loc" name="location" class="text" />
                  </p>
                  <span class="style4">
                  <label for="pic">Select Profile Picture (required)</label>
                  </span>
                  <label for="pic"><br />
                  </label>
                  <p>
                    <input type="file" id="pic" name="pic" class="text" />
                  </p>
                  <p>
                    <input name="submit" type="submit" value="REGISTER" />
                  </p>
                  <p align="right"><a href="U_Login.jsp">Back</a></p>
                </form>
				
				<p class="meta">&nbsp;</p>
		  </div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
				<h2>Menu</h2>
			  </li>
				<li>

					  <ul>
		  			    <li><a href="index.html">HOME</a></li>
           				 <li><a href="C_Login.jsp">CLOUD SERVER</a></li>
            			<li><a href="KDC_Login.jsp">KDC</a></li>
						<li class="current_page_item"><a href="U_Login.jsp">USERs</a></li>
					</ul>
				</li>
		  </ul>
		</div>
		  </ul>
		</div>
		<!-- end #sidebar -->
	</div>
	</div>
	</div>
	<!-- end #page -->
</div>
	<!-- end #footer -->
<div align=center></div>
</body>
</html>
