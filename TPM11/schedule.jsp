<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="styles.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<title>
Robotic Competition
</title>
</head>
<body class="main">


   <div class="toptab">
 
  <a  href="index.jsp">Home</a>
  <a  href="leaderboard.jsp">Leaderboard</a>
  <a class="active" href="schedule.jsp">Schedule</a>
   <%@ include file = "db.jsp" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
  <%

String username=(String)session.getAttribute("username");
String role=(String)session.getAttribute("role");
 
        if(username==null){
			%>
			<a href="login.jsp">Login</a>
         </div>  
		 <%
       }
		else if(role.equals("1")){
    %>
	<a href="panel.jsp">DashBoard</a>
  <a href="registration.jsp">Registration</a>
  <a href="registered.jsp">Registered Users</a>
		<% }
		else{%>
			  <a href="marking.jsp">Dashboard</a>
			  <%
		}
		if(username!=null) {
		%>
  
		
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
	  <% if(!role.equals("2"))
	  {
		  %>
	  <a href="#">Blogging</a>
	  <a href="#">Technical Merit</a>
	  <a href="#">Artisitic Merit</a>
	  <a href="#">Most Space Aged Robot</a>
	  <% } %>
	  
    </div>
  </div>
   <a href="logout.jsp">Logout</a>
  </div>
  
        <h3 align="center">Hi, <%=username %> </h3>
		
    <%
        }
 
       
        %>

<u><h2>Schedule </h2></u>

<br/>
<div align="center">
<form style="width:60%">

<div class="form-group">
    <label>Filter By Challenge :</label>
	
     <select class="form-group" id="category">
	 <%
	  ResultSet r2= s1.executeQuery("select distinct challenge from schedule");
					
                    while (r2.next()) {
						%>
  <option value="<%=r2.getString("challenge")%>"><%=r2.getString("challenge") %></option>
					<% }
					%>
 </select> 
    <label>Filter By Name :</label>
	
     <select class="form-group" id="category">
	  <%
	  ResultSet r3= s1.executeQuery("select distinct teamName from schedule");
					
                    while (r3.next()) {
						%>
  <option value="<%=r3.getString("teamName")%>"><%=r3.getString("teamName") %></option>
					<% }
					%>
 
  
</select> 

  

</div>

</form>
</div>
<div id="all" class="colors" >
 <table id="table1" align="center">
  <tr style="background-color:  #9dd3e4 ; font-size: 25px; ">
    <th style="width: 30px">Time</th>
    <th>Team Name</th>
	<th>Challenge</th>
    <th>Status</th>
  </tr>
  
  <%
                try {
                   
                    
                    ResultSet r1= s1.executeQuery("select * from schedule");
					
                    while (r1.next()) {
						
            %>
            
                <tr><td><%=r1.getString("time1")%></td>
				<td><%=r1.getString("teamName")%></td><td><%=r1.getString("challenge")%></td>
				<td><%=r1.getString("status")%></td></tr>
				
                
           
            <%
                    }
                    conn.close();
                } catch (Exception e) {
					%> <p>Error</p> <%
                    e.printStackTrace();
                }
				
            %>
  
  </table>
</div> 

</body>
</html>