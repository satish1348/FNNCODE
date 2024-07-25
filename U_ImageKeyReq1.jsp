<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
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
.style2 {color: #2D2B2B}
.style3 {font-size: 33px}
.style11 {
	color: #92C800;
	font-weight: bold;
	font-size: 18px;
}
.style14 {font-size: 20px}
.style18 {
	font-size: 16px;
	font-style: italic;
}
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
			  <h2 class="title">Image Key</h2>
				
				 <%
try
{
	
	String owner = request.getParameter("t142");
	String fname = request.getParameter("t14");
	String uname=(String)application.getAttribute("uname");
	String generate ="Requested";
	String s="null";
	
	
	String query="select * from request  where user='"+uname+"' and title='"+fname+"' and owner='"+owner+"' and img_key='Requested'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	
	if ( rs.next()==true)
	{
		%>
                  </p>
                  <p class="style30">Request Already Sent !!!</p>
                  <p align="right" class="style24">&nbsp;</p>
                  <p align="right" class="style24"><a href="U_Main.jsp">Back</a></p>
                  <%	
	}
	else
	{	
	
	
			
			String query1="select * from images  where title='"+fname+"' and owner='"+owner+"' "; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			
			if ( rs1.next())
			{
				String query2="select * from request  where user='"+uname+"' and title='"+fname+"' and owner='"+owner+"'"; 
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(query2);
				if(rs2.next())
				{
					String query3="update request set img_key='Requested' where user='"+uname+"' and owner='"+owner+"' and title='"+fname+"'";
					connection.createStatement().executeUpdate(query3);
					
					String query30="update request set view_per='Requested' where user='"+uname+"' and owner='"+owner+"' and title='"+fname+"'";
					connection.createStatement().executeUpdate(query30);
						%>
                  <p class="style30">Request Sent !! </p>
                  <p align="right" class="style24">&nbsp;</p>
                  <p align="right" class="style24"><a href="U_Main.jsp">Back</a></p>
                  <%
				}
				else
				{
					String query4="insert into request(user,owner,title,img_key,view_per) values('"+uname+"','"+owner+"','"+fname+"','Requested','No')";
					connection.createStatement().executeUpdate(query4); 
						%>
                  <p class="style30">Request Sent !! </p>
                  <p align="right" class="style24">&nbsp;</p>
                  <p align="right" class="style24"><a href="U_Main.jsp">Back</a></p>
                  <p class="style6">
                    <%
				}
			}
			else
			{
				%>
                  </p>
                  <p class="style30">File Doesn't Exist!!! </p>
                  <p align="right" class="style24">&nbsp;</p>
                  <p align="right" class="style24"><a href="U_Main.jsp">Back</a></p>
                  <p>
                    <%
			}
		}
	
	connection.close();
} 
catch(Exception e)
{
out.println(e.getMessage());
}
	%>
			
			
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
