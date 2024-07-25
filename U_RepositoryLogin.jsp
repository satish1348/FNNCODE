<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Repository Login</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #FF00FF}
.style4 {color: #990066}
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
				 <h2 class="title"><a href="#" class="style3"><span class="style3">Welcome</span> <span class="style3">to</span> <span class="style3">User</span> <span class="style3">Login</span> <span class="style3">Conformation</span> </a></h2>
 <p>&nbsp;</p>
 <form name="s" action="U_RepositeConf.jsp" method="post" onSubmit="return valid()"  ons target="_top">  
  <p> </p>
  <div align="center">
    <table border="1" width="70%" height="146">
      <tr>
        <td width="56%" height="25"><strong><font size="5" face="Courier New, Courier, monospace"><span class="style4">Secret </span></font><span class="style4"> <font size="5" face="Courier New, Courier, monospace">Key</font> </span></strong></td>
        <td width="44%" height="25">
  <input type="text"  name="rk" size="15"></td>
      </tr>
        <td height="78" colspan="2">
        <p align="center">
          <input type="submit"  value="Confirm" name="B1" />
          <input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
	 <p>Want Repository key? <a href="U_RepositoryKey.jsp"> click here</a><br />
                    <a href="http://all-free-download.com/free-website-templates/" style="color:#DD5411;"></a> </p>

  <p></p>
    </div>
</form>
<p align="right"><a href="U_Login.jsp">Back</a></p>
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
