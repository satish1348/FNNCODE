<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user View Images Owners</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {font-size: 33px}
.style14 {font-size: 20px}
.style20 {color: #FF00FF}
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
			  <h2 class="title style20"><span class="style20">All</span> <span class="style20">Images</span> <span class="style20">And</span> <span class="style20">Owners</span> </h2>
				 <p><table width="300" border="1" align="center"  >
			<tr>
			<td width="100" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Data Owner</div></td>
			<td width="108" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Image Title</div></td>
			
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String user=(String)application.getAttribute("uname");
					
						
						
						int i=0;
						try 
						{
							String sql="select * from images where owner!='"+user+"' ";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
							int count=0;
								i=rs.getInt(1);
								String s1=rs.getString(2);
								String s2=rs.getString(3);
								
					%>
			
			
		<tr>
			  <td  width="86" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="U_UserProfile.jsp?value=<%=s1%>&type=<%="user3"%>"><%out.println(s1);%></a></div></td>
			   <td  width="109" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s2);%></div></td>   
       </tr>
<%					
					}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

			</table>
					</p>
			<p align="right" ><a href="U_ImageKeyReq.jsp"> Back </a></p>		
					
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
