<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>KDC Generate Repository Key</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #339966}
.style5 {color: #FF0000}
-->
</style>

</head>
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
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
		<div id="content">
			<div class="post">
				<h2 class="style3"> Generate Secret Key </h2>
				<p>&nbsp;</p>
          <div class="clr"></div>
		  <table width="618" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                      <td width="66" height="30" bgcolor="#FFFF00"><div align="center" class="style21 style5"><span class="style22"> ID </span></div></td>
                      <td width="127" bgcolor="#FFFF00"><div align="center" class="style21 style5"><span class="style22">User Name </span></div></td>
                      <td width="123" bgcolor="#FFFF00"><div align="center" class="style21 style5"><span class="style22">Secret  Token </span></div></td>
                    </tr>
                    <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
		String s="null";

      		String query="select * from reposit_req "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(4);
		s5=rs.getString(3);
		

		
	
		
		%>
                    <tr>
                      <td height="58" bgcolor="#FFFF66"><div align="center" class="style5"><%=i%></div></td>
                      <td bgcolor="#FFFF66"><div align="center" class="style5"><a href="U_UserProfile.jsp?value=<%=s2%>&type=<%="user8"%>"><%=s2%></a></div></td>
                      <%
			  if(s5.equalsIgnoreCase("No"))
			{
			
		%>
                      <td bgcolor="#FFFF66"><div class="style5">
                          <div align="center">Not Requested</div>
                      </div></td>
                      <%
		
			}
			else if(s5.equalsIgnoreCase("Requested"))
			{
			
		%>
                      <td bgcolor="#FFFF66"><div class="style5">
                          <div align="center"><a href="KDC_RepositKey1.jsp?usid=<%=i%>">Generate Token</a></div>
                      </div></td>
                      <%
		
			}else
			{
		%>
                      <td width="17" bgcolor="#FFFF66"><div>
                          <div align="center"><%=s5%></div>
                      </div></td>
                    </tr>
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
        </table>
				<p align="right"><a href="KDC_Main.jsp"> Back </a></p>
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
		  			     <li><a href="KDC_Main.jsp">HOME </a></li>
           				 <li><a href="KDC_Login.jsp">LogOut </a></li>
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
