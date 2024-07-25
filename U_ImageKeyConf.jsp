<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Image Details</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style19 {
	color: #FF0000;
	font-weight: bold;
}
.style21 {color: #FF0000; font-size: 16px;}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.rk.value;
if(na3=="")

{
alert("Please Enter User Repository Key");
document.s.rk.focus();
return false;
}
else
{

}

}
</script>
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
			<%
			  String titl=request.getParameter("title");
			  application.setAttribute("title",titl);
			  String keywo=request.getParameter("keyword");
			  application.setAttribute("keyword",keywo);
			
			%>
	<form name="s" action="U_ViewSearchedImage.jsp" method="post" onSubmit="return valid()"  ons target="_top">  
  <p align="center"><img src="images/Imgkey.jpg" alt="" width="109" height="70" /> </p>
  <div align="center">
    <table border="1" width="82%" height="132">
      <tr>
        <td width="48%" height="25" bgcolor="#FFFF00"><span class="style21"><font face="Courier New, Courier, monospace">Enter Secret Key </font></span></td>
        <td width="52%" height="25">
  <input type="text"  name="rk" size="15"></td>
      </tr>
        <td height="85" colspan="2">
        <p align="center">
          <input type="submit"  value="Confirm &amp; Decrypt" name="B1" />
          <input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
	 <p><span class="style19">Do You Want Image key</span>? <a href="U_ImageKeyResp.jsp"> click here</a><br />
                <a href="http://all-free-download.com/free-website-templates/" style="color:#DD5411;"></a> </p>

  <p></p>
    </div>
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
