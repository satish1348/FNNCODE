<%@ page import="java.util.Date"%>
 <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ include file="connect.jsp"%>
<%
    
		String strDate="",strTime="",dt="";
			
		  SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		  SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		   Date now = new Date();

		   strDate = sdfDate.format(now);
		   strTime = sdfTime.format(now);
		   dt = strDate + "   " + strTime;
	
	
   String name=(String)application.getAttribute("uname");
   String rk=request.getParameter("rk");
            String sql1 = "SELECT * FROM reposit_req where user='" + name+ "' and status='"+rk+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs1 = stmt.executeQuery(sql1);
			if (rs1.next())
			{
			   String sql6="insert into reposit_report(user,rk,dt) values('"+name+"','"+rk+"','"+dt+"' )";
			   Statement st6=connection.createStatement();
	    	    st6.executeUpdate(sql6);

				response.sendRedirect("U_Main.jsp");
			}
			else
			{
				response.sendRedirect("U_RepositoryLogin.jsp");
			}		

%>