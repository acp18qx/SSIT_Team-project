<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="styles.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
table, th, td {
  border: 1px solid black;
  text-align: center;
  background-color:white;
}
th, td {
  width:15%;
}
</style>
<title>
Robotic Competition
</title>
</head>
<body class="main">


 <div class="toptab">
   
   <a href="index.jsp">Home</a>
  <a href="leaderboard.jsp">Leaderboard</a>
  <a href="schedule.jsp">Schedule</a>
  <a href="panel.jsp">DashBoard</a>
  <a  href="registration.jsp">Registration</a>
   <a class="active" href="registered.jsp">Registered Users</a>
  <div class="dropdown2">
    <button class="dropbtn2">Marking
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown2-content">
      <a href="hubble.jsp">Hubble</a>
      <a href="canyons.jsp">Canyons</a>
      <a href="speedtest.jsp">Speed Test</a>
	  <a href="pinoon.jsp">Pi-noon</a>
      <a href="spaceinvaders.jsp">Space Invaders</a>
      <a href="spirit.jsp">Spirit of Curiosity</a>
	  <a href="obstacle.jsp">Obstacle Course</a>
	  <a href="#">Blogging</a>
	  <a href="#">Technical Merit</a>
	  <a href="#">Artisitic Merit</a>
	  <a href="#">Most Space Aged Robot</a>
	  
    </div>
  </div>
  <a href="logout.jsp">Logout</a>
  
  
</div> 
 <%@ include file = "db.jsp" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
        String username=(String)session.getAttribute("username");
		String role=(String)session.getAttribute("role");
        
         if(username==null || !(role.equals("1"))){
            %>
			<script>
			window.location.href = "login.jsp";
			</script>
			<%
        }
		else {
    %>
        <h3 align="center">Hi, <%=username %> </h3>
    <%
        }
 
       
        %>

<u><h2>Registered Users </h2></u>
<table align="center">
					<tr>
					<th>No</th>
					<th>UserName</th>
					<th>Role</th>
					<th>Password</th>
					</tr>
					
            <%
                try {
                   
                    String sql = "select * from users";
                    ResultSet r1= s1.executeQuery("select * from userstp");
					int counter=0;
                    while (r1.next()) {
						counter++;
            %>
            
                <tr><td><%=counter%></td><td><%=r1.getString("username")%></td>
				<td><%=r1.getString("role")%></td><td><%=r1.getString("pass")%></td></tr>
				
                
           
            <%
                    }
                    conn.close();
                } catch (Exception e) {
					%> <p>Error</p> <%
                    e.printStackTrace();
                }
				
            %>
        </table>
</body>
</html>