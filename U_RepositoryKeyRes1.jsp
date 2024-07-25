<title>Search Token Request</title>
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%
   	String name=(String)application.getAttribute("uname");
	String pass=request.getParameter("pass");
	String msg="";
	try
	{
		
		String sql = "SELECT * FROM user where name='" + name+ "' and pass='" + pass + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next())
		{
			String query="select * from reposit_req where user='"+name+"'";
			Statement st = connection.createStatement();
			ResultSet rs1 =st.executeQuery(query);
			if(rs1.next())
			{
				msg=rs1.getString(3);
				if (msg.equalsIgnoreCase("Requested"))
				{
					msg="Repository Key Not Generated !!";
					response.sendRedirect("U_RepositoryKeyRes.jsp");
					application.setAttribute("msg",msg);
				}
				else 
				{
					response.sendRedirect("U_RepositoryKeyRes.jsp");
					application.setAttribute("msg",msg);
				}
			}
			else
			{
				msg="Search Token Not Requested !!";
				response.sendRedirect("U_RepositoryKeyRes.jsp");
				application.setAttribute("msg",msg);
			}
		}
		else
		{
				
				msg="Password Did not Match, Please Enter Correct Password !!";
				response.sendRedirect("U_RepositoryKeyRes.jsp");
				application.setAttribute("msg",msg);
	out.print(msg);
		}	
	}
	catch(Exception e)
	{
	out.print(e);
	}
%>