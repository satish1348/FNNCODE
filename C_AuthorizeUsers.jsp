<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Green Forest  
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20110306

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Cloud All Users And Authorize </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 18px}
.style3 {color: #FFFF00}
.style4 {color: #FF0000}
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
	 <div class="content">
      <div class="content_resize">
	
	 <h2 class="style5">  View and Authorize Users..</h2>
	 <p>&nbsp;</p>
      <div class="clr"></div>
	  <table width="913" align="center"  cellpadding="0" cellspacing="0">
            <tr>
              <td width="51" height="37" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style27 style105 style65 style3"><em><strong>ID</strong></em></div></td>
              <td width="157" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style27 style105 style65 style3"><em><strong>User Image</strong></em></div></td>
              <td width="121" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style27 style105 style65 style3"><em><strong>User Name</strong></em></div></td>
              <td width="142" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style27 style105 style65 style3"><em><strong>Email</strong></em></div></td>
              <td width="135" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style27 style105 style65 style3"><em><strong>Mobile</strong></em></div></td>
              <td width="121" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style27 style105 style65 style3"><em><strong>Address</strong></em></div></td>
              <td width="108" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style27 style105 style65 style3"><em><strong>Gender</strong></em></div></td>
			  <td width="108" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style27 style105 style65 style3"><em><strong>Status</strong></em></div></td>   
			</tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s5=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(8);
								s6=rs.getString(12);
								
					%>
            <tr bgcolor="#99CCFF">
              <td height="122" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style4"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              <td  rowspan="1" align="center" valign="middle" bgcolor="#FFFF00" ><div class="style57 style86 style55 style54 style37 style70 style71 style4" style="margin:10px 13px 10px 13px;" ><strong>
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:120px; height:100px;" />
              </strong></div></td>
              <td  align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style4"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
              <td  align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style4"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style4"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
              <td  align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style4"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
			  <td align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style4"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
               <%
						if(s6.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td align="center" valign="middle" bgcolor="#FFFF00"  style="color:#000000;"><div align="center" class="style20 style30 style37 style86 style70 style71 style4">
                  <div align="center"><a href="Authentication.jsp?id=<%=i%>" class="style6">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="76" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style20 style37 style55 style30 style71 style72 style4">
                  <%out.println(s6);%>
              </div></td>
              <%
						}
						
						%>
        </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
    </table>
	  
	  <div align="right">
            <p>&nbsp;</p>
            <p align="right"><a href="C_Main.jsp" class="style53 style54 style56 style66">Back</a></p>
          
      </div>
  </div>
      <div class="clr"></div>
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
