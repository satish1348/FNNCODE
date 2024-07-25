<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style11 {
	color: #92C800;
	font-weight: bold;
	font-size: 18px;
}
.style14 {font-size: 20px}
.style20 {color: #999933}
.style21 {color: #FF00FF}
.style24 {color: #0000FF}
-->
</style>
<script language="javascript" type="text/javascript">
function valid()
{
var na3=document.s.title.value;
if(na3=="")

{
alert("Please Enter Image title");
document.s.title.focus();
return false;
}
var na31=document.s.tag.value;
if(na31=="")

{
alert("Please Enter Image Tag");
document.s.tag.focus();
return false;
}

var na4=document.s.des.value;
if(na4=="")

{
alert("Please Enter Description");
document.s.des.focus();
return false;
}

var na41=document.s.uses.value;
if(na41=="")

{
alert("Please Enter Uses");
document.s.uses.focus();
return false;
}

var na5=document.s.img.value;
if(na5=="")

{
alert("Please Select a Image");
document.s.img.focus();
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
			  <h2 class="title style24">Add Image</h2>
				  <form name="s" action="O_AddImageIns.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top"> 

					  <p class="style1">(<span class="style5 style8">*  <span class="style21">Required</span></span>)</p>
					  <table width="420" align="center">
					    
                        
                        <tr>
                          <td height="43"><span class="style9 style21">Image Title </span><span class="style8 style5 style21">*</span></td>
                          <td><input id="use" name="title" class="text" style="width:175px;" /></td>
                        </tr>
						<tr>
                          <td height="43"><span class="style9 style21">Image Tag </span><span class="style8 style5 style21">*</span></td>
                          <td><input id="a" name="tag" class="text" style="width:175px;" /></td>
                        </tr>
                        <tr>
                          <td height="43"><span class="style9 style21">Description</span><span class="style8 style5 style21">*</span></td>
                          <td><textarea name="des" rows="3" cols="23"></textarea></td>
                        </tr>
						<tr>
                          <td height="43"><span class="style9 style21">Image Uses</span><span class="style8 style5 style21">*</span></td>
                          <td><textarea name="uses" rows="3" cols="23"></textarea></td>
                        </tr>
                        <tr>
                          <td height="43"><span class="style9 style21">Select Image</span><span class="style8 style5 style21">*</span></td>
                          <td><input type="file" id="img" name="img" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="49" rowspan="3">
                          <p><span class="style20"><span class="style21"></span></span></p></td>
                        <td align="left" valign="middle"><p>
                              <input name="submit" type="submit" value="ENCRYPT & ADD IMAGE" />
                            </p>                          </td>
                        </tr>
        </table>
		<div class="style11">
        <div align="center"><a href="O_Main.jsp" class="style14">Back</a></div>
      </div>
      </form>
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
		  			    <li><a href="O_Main.jsp">HOME</a></li>
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
