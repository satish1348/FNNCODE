<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Image Key Request </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style19 {color: #FF00FF}
.style20 {color: #CC3366}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.t142.value;
if(na3=="")

{
alert("Please Enter owner Name");
document.s.t142.focus();
return false;
}
else
{

}
var na4=document.s.t14.value;
if(na4=="")

{
alert("Please Enter File Name");
document.s.t14.focus();
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
			  <h2 class="title style19"><span class="style19">Secret</span> <span class="style19">Key</span> <span class="style19">Request</span> </h2>
                <p><a href="U_ImageKeyResp.jsp">View Secret Key Response</a></p>
				<form name="s" action="U_ImageKeyReq1.jsp" method="post" onSubmit="return valid()"  ons target="_top">
                    <p align="left" class="style17"><a href="U_SymRes.jsp"></a> </p>
                      <p align="left" class="style17 style20">Enter Owner Name : &nbsp;
                          <input name="t142" type="text" size="30" />
                      </p>
                      <p align="left" class="style17"><span class="style20"> Enter File Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </span>
                        <input name="t14" type="text" size="30" />
                  </p>
                      <p align="left" class="style17"><br />
                          <br />
                          <input type="submit" name="Submit" value="Request Secret Key" />
                      </p>
                    <label for="name"></label>
              </form>
			 <p>To See Data Owners<a href="U_ViewDataOwner.jsp">Click Here</a> </p>
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
