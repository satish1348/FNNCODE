<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Login</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #FF00FF}
.style4 {
	color: #993399;
	font-weight: bold;
}
.style5 {
	color: #993366;
	font-weight: bold;
}
.style6 {
	color: #FF0000;
	font-size: 16px;
	font-weight: bold;
}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
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
				<h2 class="title"><a href="#" class="style3"><span class="style3">Welcome</span> <span class="style3">to</span> <span class="style3">User</span> <span class="style3">Login</span></a>                  </h2>
				
                 <form name="s" action="U_Authentication.jsp" method="post" onSubmit="return valid()"  ons target="_top">
                   <p></p>
  <div align="center">
    <table border="0" width="81%" height="190">
      <tr>
        <td height="25" colspan="2"><img src="images/Ulogin.jpg" alt="" width="453" height="95" /></td>
        </tr>
      <tr>
        <td height="25"><span class="style6">Select User Type </span></td>
        <td height="25"><select name="utype">
          <option>---Select--</option>
          <option>Data Users</option>
          <option>Data Owner</option>
        </select>
        </td>
      </tr>
      <tr>
        <td width="48%" height="25"><span class="style4"><font size="5" face="Courier New, Courier, monospace">User Name</font> </span></td>
        <td width="52%" height="25">
  <input type="text"  name="userid" size="15"></td>
      </tr>
      <tr>
        <td width="48%" height="25"><span class="style5"> <font size="5" face="Courier New, Courier, monospace">Pasword</font></span></td>
        <td width="52%" height="25">
  <input type="password"  name="pass" size="15"></td>
      </tr>
      <tr>
        <td height="78" colspan="2">
        <p align="center">
          <input type="submit"  value="Login" name="B1" />
          <input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
	 <p>New User? click here to <a href="U_Register.jsp"> Register</a><br /><a href="http://all-free-download.com/free-website-templates/" style="color:#DD5411;"></a> </p>
    <p>&nbsp;</p>
  <p> </p>
    </div>
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
