<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>KDC Repository key Access </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #FF00FF}
.style4 {color: #FFFF00}
-->
</style>

</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li><a href="index.html">Home</a></li>
            <li><a href="C_Login.jsp">CLOUD SERVER</a></li>
            <li class="current_page_item"><a href="KDC_Login.jsp">KDC</a></li>
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
		  <div class="content resize">
			  <h2 class="style3">View Images With Image Key</h2>
          <p><table width="565" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr><td width="80" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style14 style7 style4" style="	margin-left:20px;">Image</div></td>
			<td width="70" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style14 style7 style4" style="margin-left:20px;">Image Title</div></td>
			<td width="63" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style14 style7 style4" style="margin-left:20px;">Image Owner</div></td>
			<td width="58" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style14 style7 style4" style="margin-left:20px;">Image Key</div></td>
			<td width="84" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style14 style7 style4" style="margin-left:20px;">Description</div></td>
			<td width="82" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style14 style7 style4" style="margin-left:20px;">Image Uses</div></td>
			<td width="49" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style14 style7 style4" style="margin-left:20px;">date</div></td>
			<td width="61" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
			<div align="left" class="style14 style7 style4" style="margin-left:20px;">Rank</div></td>
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
								String s2=rs.getString(10);
								String s3=rs.getString(5);
								String s4=rs.getString(6);
								String s5=rs.getString(7);
								String s6=rs.getString(9);
					//String decryptedDes= new String(Base64.decode(s3.getBytes()));
						
						
					%>
			
			
		<tr>
			<td width="80">
			<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="image"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
			  <td  width="70" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="C_ImageDetail.jsp?title=<%=s1%>&type=<%="user5"%>"><%out.println(s1);%></a></div></td>
			   <td  width="63" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="U_UserProfile.jsp?value=<%=s7%>&type=<%="user7"%>"><%out.println(s7);%></a></div></td>
			   <td  width="58" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s2);%></div></td>
			    <td  width="84" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s3);%></div></td>
			  <td  width="82" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s4);%></div></td>
			  <td  width="49" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s5);%></div></td>
			   <td  width="61" valign="middle" height="44" style="color:#000000;">
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
			  <p align="right"><a href="KDC_Main.jsp"> Back </a></p>
			  <p class="meta">&nbsp;</p>
		  </div></div>
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
