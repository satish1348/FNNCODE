<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Profile </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style20 {color: #33CC66}
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
			 <h2 class="star" align="left"><span><span class="style6">User</span> <span class="style6">Profile</span> </span></h2>
          <p class="star" align="center">&nbsp;</p>
		  <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
			
			<%@ include file="connect.jsp" %>
					<%
						
						String user1=request.getParameter("value");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where name='"+user1+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
					%>
					<tr><td rowspan="8" >
						<div style="margin:10px 13px 10px 13px;" >
                		<a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:230px;"  />
				   		</a>                	</div>
					</td>
					<tr/>
					<tr>
 						<td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Username</b></div></td>
						<td  width="300" valign="middle" height="40" style="color:#000000;"><div align="left" class="style4 style20" style="margin-left:20px;">
						  <%out.println(s1);%></div></td>
					</tr>
					<tr>
 						<td  width="120" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
						<td  width="72" valign="middle" height="40" style="color:#000000;"><div align="left" class="style20" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
  						<td  width="100" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Mobile</strong></div></td>
						<td  width="82" valign="middle" height="40"><div align="left" class="style20" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" class="style20" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Gender</strong></div></td>
						<td  width="82" align="left" valign="middle" height="40"><div align="left" class="style20" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Address</strong></div></td>
					  <td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left"><div align="left" class="style20" style="margin-left:20px;"><%out.println(s4);%></div></td>
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
              <h2 align="right">&nbsp;</h2>
			<% String type=request.getParameter("type");
			if(type.equalsIgnoreCase("user1")){%>
            <h2 align="right"><a href="U_AlreadyViewedDetail.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("user2")){%>
            <h2 align="right"><a href="U_ImageKeyPermit.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user3"))
			{%>
            <h2 align="right"><a href="U_ViewDataOwner.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user4"))
			{%>
            <h2 align="right"><a href="C_ViewImages.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user5"))
			{%>
            <h2 align="right"><a href="C_UsersWithReposit.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user6"))
			{%>
            <h2 align="right"><a href="C_AllAttacker.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user7"))
			{%>
            <h2 align="right"><a href="KDC_ViewAllReposiImg.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user8"))
			{%>
            <h2 align="right"><a href="KDC_RepositKey.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user9"))
			{%>
            <h2 align="right"><a href="KDC_RepositeKeyAccess.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user10"))
			{%>
            <h2 align="right"><a href="KDC_ImgKeyRepo.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user11"))
			{%>
            <h2 align="right"><a href="C_ViewAcessDetail.jsp" class="style4">Back</a></h2>
			<%}

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
