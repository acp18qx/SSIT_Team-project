<!--Headers for import java packages-->
<%@page language="java"%><%@ include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String user=request.getParameter("username");   //Getting from the form login
    String pass=request.getParameter("password");	

    boolean userFound=false;
	String role="";
    try {
        
        ResultSet r1= s1.executeQuery("select * from userstp");
        while (r1.next()) {
			//check if the username and password combination is found
			if(((r1.getString("username")).equals(user))&&((r1.getString("pass")).equals(pass))){
                userFound=true;
				role=(r1.getString("role"));
            }
        }
        
conn.close();
    } catch (Exception e) {
%> <p>Error</p> <%
        e.printStackTrace();
    }
	//if the combination is found redirects to panel
    if((user.equals("admin")&&pass.equals("1234"))||userFound)  {
		if(user.equals("admin")){
			role="1";
		}
        session.setAttribute("username",user);
		session.setAttribute("role",role);
		if(role.equals("1")){
        response.sendRedirect("panel.jsp");
		}
		else{
			response.sendRedirect("marking.jsp");
		}
}
	//else redirects to the login page
else {
        %>
			<script>
			alert("Wrong Username or Password!!!");
			window.location.href = "login.jsp";
			</script>
			<%

    }

%>