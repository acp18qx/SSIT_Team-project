 <%@ include file = "db.jsp" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String user=request.getParameter("username");
String pass=request.getParameter("password");
int role=Integer.parseInt(request.getParameter("role"));
//int role=1;
try
{



int i=s1.executeUpdate("insert into userstp(username,pass,role)values('"+user+"','"+pass+"','"+role+"')");
%>
			<script>
			alert("User is added successfully!!!");
			window.location.href = "panel.jsp";
			</script>
			<%
}
catch(Exception e)
{
	%><p>Error</p> <%
System.out.print(e);
e.printStackTrace();
}


%> 