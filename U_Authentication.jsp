<title>Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");
	String utype = request.getParameter("utype");
	
	
			
	String wait="Waiting";
	String auth="Authorized";
try {

     
        if(utype.equalsIgnoreCase("Data Users"))
		{
		String sql = "SELECT * FROM user where name='" + name+ "' and pass='" + pass + "' and utype='" + utype + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next())
		{
			String sql1 = "SELECT * FROM user where name='" + name+ "' and pass='" + pass + "' and status='Authorized' ";
			ResultSet rs1 = stmt.executeQuery(sql1);
			if (rs1.next())
			{
			
			    application.setAttribute("uname", name);
			    String lname=rs1.getString(10);

				response.sendRedirect("U_RepositoryLogin.jsp");
			}
			else
			{
				response.sendRedirect("U_Autority.jsp");
			}		
		}	
		else
		{
			response.sendRedirect("U_Wrong_Login.jsp");
		}
		}
		
		else if(utype.equalsIgnoreCase("Data Owner"))
		{
		String sql = "SELECT * FROM user where name='" + name+ "' and pass='" + pass + "' and utype='" + utype + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next())
		{
			String sql1 = "SELECT * FROM user where name='" + name+ "' and pass='" + pass + "' and status='Authorized' ";
			ResultSet rs1 = stmt.executeQuery(sql1);
			if (rs1.next())
			{
			   
				
				application.setAttribute("oname", name);

				response.sendRedirect("O_Main.jsp");
			}
			else
			{
				response.sendRedirect("U_Login.jsp");
			}		
		}	
		else
		{
			response.sendRedirect("U_Wrong_Login.jsp");
		}
		}
		
		

	} catch (Exception e) {
		out.print(e);
		e.printStackTrace();
	}
%>

