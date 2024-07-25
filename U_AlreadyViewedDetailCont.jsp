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
			
			
<h2 class="style19">Searched Image <%= request.getParameter("title")%> Details</h2>
                <p class="style6">&nbsp;</p>
                <p>
				
			<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
    <%
      	try 
	{      
	       					String user = (String)application.getAttribute("uname");     
		   					String title = request.getParameter("title");			
							
		String str1="select * from request where user='"+user+"' and title='"+title+"' and view_per='permitted' "; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str1);
		   
			if ( rs1.next() )
	   		{	
				
	   
           String s1="",Keyword="",s2="",s3="",s4="",s5="",s7="",s8="";
	       int i=0;
	
		   String str="select * from images where title='"+title+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(str);
		   
	if ( rs.next() )
	   {
		i  = rs.getInt(1);
		s1 = rs.getString(3);
		s2 = rs.getString(4);
		s3 = rs.getString(5);
		s4 = rs.getString(6);
		s5 = rs.getString(7);
		int s6 = rs.getInt(9);
		
		
		 /*
					 Statement st32 = connection.createStatement();
					 String query32 ="update images set rank=rank+1 where title='"+title+"' ";
					 st32.executeUpdate (query32);
           */          
					  
	
		String keyWord = "5765586965748666502846";
		keyWord = keyWord.substring(0, 16);
		byte[] keyValue = keyWord.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c2 = Cipher.getInstance("AES");
		c2.init(Cipher.ENCRYPT_MODE, key);
	
		 s7 = new String(Base64.decode(s3.getBytes()));
									
									   
	
%>
          </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0" >
				 				<tr >
								    <td width="160" rowspan="7" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                                <input  name="image" type="image" src="images.jsp?value=<%="image"%>&id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="187" height="27" >
								  <div align="center"><span class="style17" style="color:#f69722">Image Name</span> </div></td>
								    <td><div align="center"><span class="style17" style="color:#000000;"><%= s1%></span></div></td>
		  						<tr/>
				    
				    
				    			<tr>
									<td width="187" height="27">
						  		  <div align="center"><span class="style17" style="color:#f69722">Image Tag</span> </div></td>
								    <td><div align="center"><span class="style17" style="color:#000000;"><%= s2%></span></div></td>
								</tr>
								<tr>
									<td width="187" height="27">
								  <div align="center"><span class="style17" style="color:#f69722">Description </span> </div></td>
								    <td><div align="center"><span class="style17" style="color:#000000;"><%= s7%></span></div></td>
				    			</tr>
								<tr>
										<td width="187" height="27">
								  <div align="center"><span class="style17" style="color:#f69722">Image Uses </span></div></td>
								        <td><div align="center"><span class="style17" style="color:#000000;"><%= s4%></span></div></td>
								</tr>
								<tr>
								<tr>
										<td width="187" height="27">
								  <div align="center"><span class="style17" style="color:#f69722">Image Rank </span></div></td>
								        <td><div align="center"><span class="style17" style="color:#000000;"><%= s6%></span></div></td>
								</tr>
								<tr>
										
								        
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
					</p>
			<p align="right" ><a href="U_AlreadyViewedDetail.jsp"> Back </a></p>		
					
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
