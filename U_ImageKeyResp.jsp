<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Image Key Response </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style19 {color: #FF00FF}
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
			  <h2 class="title style19"><span class="style19">Secret</span> <span class="style19">Key</span></h2>
			
	          <form id="form" name="form1" method="post" action="U_FindImgKey.jsp">
                    <div align="center" class="style21">
                      <p><br />
                        <span class="style19">Enter File Name :</span>
                        <input required="required" name="t14" type="text" size="30" />
                      </p>
                      <p><br />
                          <br />
                          <input type="submit" name="Submit" value="View Image Key " />
                      </p>
                      <p>&nbsp; </p>
                    </div>
                    <%String key=(String)application.getAttribute("key");
			  if(key!=(null))
			  {%>
                    <p align="center" class="style21"><strong><span class="style19">Secret  Key :</span> <%=key%>&nbsp;</strong></p>
                    <%application.removeAttribute("key");
			  }%>
              </form>

			 <p align="right" class="style24"><a href="U_Main.jsp">Back</a></p>
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
		  			    <li><a href="U_Main.jsp">Home</a></li>
           				 <li><a href="U_Login.jsp">LOGOUT</a></li>
					</ul>
				</li>
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
