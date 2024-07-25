<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style19 {color: #FF00FF}
.style21 {color: #FFFF00}
.style22 {color: #FF0000}
-->
</style>
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
			  <h2 class="title"><span class="style19">Secret</span> <span class="style19">Key Response</span></h2>
				
	          <table width="551" border="1.5" cellpadding="0" cellspacing="0" align="center">
                    <tr bgcolor="#00FF33">
                      <td width="59" height="30" bgcolor="#FF0000"><div align="center" class="style26 style21"><strong> ID </strong></div></td>
                      <td width="141" bgcolor="#FF0000"><div align="center" class="style27 style21">User Name </div></td>
                      <td width="161" bgcolor="#FF0000"><div align="center" class="style27 style21"><span class="style28">File Name </span></div></td>
                      <td width="156" bgcolor="#FF0000"><div align="center" class="style27 style21">Permission</div></td>
                      <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{		String dname=(String)application.getAttribute("oname");
      		String query="select * from request where owner='"+dname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		
		%>
                    </tr>
                    <tr>
                      <td height="48" bgcolor="#FFFF66"><div align="center" class="style22"><%=i%></div></td>
                      <td bgcolor="#FFFF66"><div align="center" class="style22"> <a href="O_UserProfile.jsp?value=<%=s2%>&type=<%="user2"%>"> <%=s2%> </a></div></td>
                      <td bgcolor="#FFFF66"><div align="center" class="style22"><a href="O_ImageDetail.jsp?title=<%=s4%>&type=<%="user7"%>"><%=s4%></a></div></td>
                      <%	
			if(s5.equalsIgnoreCase("Requested"))
			{
			
		%>
                      <td bgcolor="#FFFF66"><div class="style22">
                          <div align="center"><a href="O_ImageKeyPermit1.jsp?usid=<%=i%>">Permit</a></div>
                      </div></td>
                      <%
		
			}
			else if(s5.equalsIgnoreCase("No"))
			{
			
		%>
                      <td bgcolor="#FFFF66"><div class="style22">
                          <div align="center">Not Requested</div>
                      </div></td>
                      <%
		
			}
			else
			{
		%>
                      <td width="22" bgcolor="#FFFF66"><div class="style22">
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
			 <p align="right" class="style24"><a href="O_Main.jsp">Back</a></p>
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
