<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Search Image</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {color: #2D2B2B}
.style11 {
	color: #92C800;
	font-weight: bold;
	font-size: 18px;
}
.style14 {font-size: 20px}
.style19 {color: #FF00FF}
.style20 {color: #0066CC}
.style21 {
	color: #FF0000;
	font-weight: bold;
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
			  <h2 class="title style19"><span class="style19">Search</span> Medical <span class="style19">Images</span></h2>
				 <form name="s" action="U_SearchImage.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><div align="center" class="header">
                        <div align="right" class="style12">
                          <div align="center" class="style21">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2"><div align="center" class="style13">( searching content Based on Image <span class="style20">Description</span>)</div>
                      </div></TD>
                    </TR>
                  </TABLE>
                </DIV>
                <P>&nbsp; </P>
            </FORM>
			
			
		  </div>
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
				  
				  
				  String user=(String)application.getAttribute("uname");

							try
							{
								String s1="",keyword="",s2="",s3="",s5="",s6="";
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
				               int count=0;
								String sql="select * from images where owner!='"+user+"' ";
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(sql);
								while(rs.next())
										{
									i=rs.getInt(1);
								    s1 = rs.getString(2);
									s2 = rs.getString(3);
									s3 = rs.getString(5);    
									int s4 = rs.getInt(9);
								
						   
									   String keyWord = "5765586965748666502846";
										keyWord = keyWord.substring(0, 16);
										byte[] keyValue = keyWord.getBytes();
										Key key = new SecretKeySpec(keyValue, "AES");
										Cipher c2 = Cipher.getInstance("AES");
										c2.init(Cipher.ENCRYPT_MODE, key);
									
									   String decryptedDes= new String(Base64.decode(s3.getBytes()));
									   String des=decryptedDes.toLowerCase();
					
										if ((des.contains(keyword)))
										{
										count++;
									%>
                </P>
 </p>
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="image"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
               <p> <div align="center" class="style11"><span class="style4">Image Title : </span><span class="style15"> <%=s2%></span></div></p>
                <p><div align="center" class="style11"><span class="style4">Image Rank : </span> <span class="style15"> <%=s4%></span></div></p>
                <p><div align="center" class="style5 style14"><span class="style11">View <a href="U_ImageKeyConf.jsp?title=<%=s2%>&keyword=<%=input%>">Details</a></span></div></p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	}
							
						 }
						 if(count==0){out.print("No Results Found");}
						
					}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  
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
