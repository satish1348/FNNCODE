<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<%
int uid = Integer.parseInt(request.getParameter("usid"));
try {

String str="Permitted";
Statement st1 = connection.createStatement();
String query1 ="update request set img_key='"+str+"' where id='"+uid+"' ";
st1.executeUpdate (query1);

Statement st2 = connection.createStatement();
String query2 ="update request set view_per='Permitted' where id='"+uid+"' ";
st2.executeUpdate (query2);
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
response.sendRedirect("O_ImageKeyPermit.jsp");
%>
</body></html>