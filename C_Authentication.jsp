
<%@ include file="connect.jsp"%>


<%
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");

	try {

		String sql = "SELECT * FROM server where name='" + name+ "' and password='" + pass + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next()==true)
		{
			response.sendRedirect("C_Main.jsp");
		}
		 else 
		{
			response.sendRedirect("C_Wrong_Login.jsp");
		}

	} 
	catch (Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
%>

