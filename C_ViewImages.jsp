<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Cloud View Images </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #FFFFFF}
-->
</style>

</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li><a href="index.html">Home</a></li>
            <li class="current_page_item"><a href="C_Login.jsp">CLOUD SERVER</a></li>
            <li><a href="KDC_Login.jsp">KDC</a></li>
			<li><a href="U_Login.jsp">USERs</a></li>
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
		<div id="content resize">
			<div class="post">
				<h2 class="title">View All Medical Images </h2>
				 <p><table width="565" border="0" align="center"  cellpadding="0" cellspacing="0" >
			<tr><td width="86" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style7 style14" style="	margin-left:20px;"><strong>Image</strong></div></td>
			<td width="86" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style7 style14" style="margin-left:20px;"><strong>Image Title</strong></div></td>
			<td width="86" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style7 style14" style="margin-left:20px;"><strong>Image Owner</strong></div></td>
			<td width="109" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style7 style14" style="margin-left:20px;"><strong>Image Tag</strong></div></td>
			<td width="75" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style7 style14" style="margin-left:20px;"><strong>Description</strong></div></td>
			<td width="75" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style7 style14" style="margin-left:20px;"><strong>Image Uses</strong></div></td>
			<td width="87" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style7 style14" style="margin-left:20px;"><strong>date</strong></div></td>
			<td width="108" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style3 style7 style14" style="margin-left:20px;"><strong>Rank</strong></div></td>
			</tr>
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
						int i=0;
						try 
						{
							String sql="select * from images ";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
							int count=0;
								i=rs.getInt(1);
								String s7=rs.getString(2);
								String s1=rs.getString(3);
								String s2=rs.getString(4);
								String s3=rs.getString(5);
								String s4=rs.getString(6);
								String s5=rs.getString(7);
								String s6=rs.getString(9);
					//String decryptedDes= new String(Base64.decode(s3.getBytes()));
						
						
					%>
			
			
		<tr>
			<td width="86">
			<div ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="image"%>" style="width:200px; height:200px;"  />
			 </a></div>	</td>
			  <td  width="86" valign="middle" height="129" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="C_ImageDetail.jsp?title=<%=s1%>&type=<%="user2"%>"><%out.println(s1);%></a></div></td>
			  <td  width="86" valign="middle" height="129" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="U_UserProfile.jsp?value=<%=s7%>&type=<%="user4"%>"><%out.println(s7);%></a></div></td>
			   <td  width="109" valign="middle" height="129" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s2);%></div></td>
			    <td  width="75" valign="middle" height="129" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><textarea><%out.println(s3);%></textarea></div></td>
			  <td  width="75" valign="middle" height="129" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s4);%></div></td>
			  <td  width="75" valign="middle" height="129" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s5);%></div></td>
			   <td  width="75" valign="middle" height="129" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s6);%></div></td>
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
				<p align="right" ><a href="C_Main.jsp"> Back </a></p>
				<p class="meta">&nbsp;</p>
		  </div>
		</div>
		<!-- end #content -->
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
