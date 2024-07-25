<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user View Images </title>
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
.style19 {color: #CC0066}
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
			  <h2 class="title style19"><span class="style20">View All</span> <span class="style20">Medical Images</span></h2>
				 <p><table width="565" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr><td width="86" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="	margin-left:20px;">Image</div></td>
			<td width="86" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Image Title</div></td>
			<td width="109" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Reposited Key</div></td>
			<td width="75" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Description</div></td>
			<td width="75" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Image Uses</div></td>
			<td width="87" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">date</div></td>
			<td width="108" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
			<div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Rank</div></td>
			
			</tr>
			
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>

					<%
						String user=(String)application.getAttribute("oname");
					
						
						
						int i=0;
						try 
						{
							String sql="select * from images where owner='"+user+"' ";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
							int count=0;
								i=rs.getInt(1);
								String s1=rs.getString(3);
								String s2=rs.getString(10);
								String s3=rs.getString(5);
								String s4=rs.getString(6);
								String s5=rs.getString(7);
								String s6=rs.getString(9);
								
								String keys = "ef50a0ef2c3e3a5f";
								byte[] keyValue = keys.getBytes();
								Key key = new SecretKeySpec(keyValue,"AES");
								Cipher c = Cipher.getInstance("AES");
								c.init(Cipher.DECRYPT_MODE,key);
								String decryptedDes= new String(Base64.decode(s3.getBytes()));
						
						
					%>
		<tr>
			<td width="86">
			<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="image"%>" style="width:200px; height:200px;"  />
			 </a></div>	</td>
			  <td  width="86" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="O_ImageDetail.jsp?title=<%=s1%>&type=<%="user6"%>"><%out.println(s1);%></a></div></td>
			   <td  width="109" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s2);%></div></td>
			    <td  width="75" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(decryptedDes);%></div></td>
			  <td  width="75" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s4);%></div></td>
			  <td  width="75" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s5);%></div></td>
			   <td  width="75" valign="middle" height="44" style="color:#000000;">
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
			<p align="right" ><a href="O_Main.jsp"> Back </a></p>		
					
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
		  			    <li><a href="O_Main.jsp">Home</a></li>
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
