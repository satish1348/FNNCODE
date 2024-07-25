<title>Repository Token Request</title>
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%
   	String tokens=request.getParameter("tokens");      
   	String name=(String)application.getAttribute("uname");
	String msg="";
	try
	{
		String query="select * from reposit_req where user='"+name+"'";
		Statement st = connection.createStatement();
		ResultSet rs1 =st.executeQuery(query);
		if(rs1.next())
		{
			
			msg="Request Already Sent to KDC !!";
			response.sendRedirect("U_RepositoryKey.jsp");
			application.setAttribute("msg",msg);
		}
		else
		{
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
			
			String sql="insert into reposit_req(user,status,dt) values('"+name+"','Requested','"+dt+"')";
			Statement stmt = connection.createStatement();
			int rs =stmt.executeUpdate(sql);
			if(rs==1)
			{
				
					msg=" Request Sent To KDC Successfully !!";
					application.setAttribute("msg",msg);
					response.sendRedirect("U_RepositoryKey.jsp");
			}
			
		}
	}
	catch(Exception e)
	{
	out.print(e);
	}
%>