<%@page language="java"%><%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try {
        int role;
        ResultSet r1= s1.executeQuery("select role from userstp where username='username'");
        while (r1.next()) {
			role=Integer.parseInt(r1.getString("role"))
        }
        
conn.close();
    } catch (Exception e) {
%> <p>Error</p> <%
        e.printStackTrace();
    }


%>