<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
 roundCount = 0;

 
</script>
<title>
Robotic Competition
</title>
</head>
<body class="main">


 
 <div class="toptab">
  
  <a href="index.jsp">Home</a>
  <a href="leaderboard.jsp">Leaderboard</a>
  <a href="schedule.jsp">Schedule</a>

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
 <%@ include file = "db.jsp" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%> 






<u><h2>Canyons</h2></u>
<div class="form1" id="form1m">
<form style="width:60%">
<div class="form-group">
    <label >Team Name</label>
    </br>
     <select class="form-group" id="controlmethod">
	  <%
	  ResultSet r2= s1.executeQuery("select distinct teamName from schedule where challenge='Canyons'");
					
                    while (r2.next()) {
						%>
  <option value="<%=r2.getString("teamName")%>"><%=r2.getString("teamName") %></option>
					<% }
					%>
  
</select> 
</div>

<div id="formIn">
<div>
<table id="table4">
  <tr >
    <th id="t3h1"style="background-color:  #B9B9CD   ; font-size: 25px; ">Round 1</th>
    <th id="t3h2"style="background-color:  #4E7092 ; font-size: 25px; ">Round 2</th>
	<th id="t3h3"style="background-color:  #4E7092 ; font-size: 25px; ">Round 3</th>
	
  </tr>
 
  </table>
</div>
</br>

 
  
 <div class="form-group">
    <label >Walls Touched : </label>
    <input type="radio" name="zonecount" value="yes"> Yes &nbsp;
  <input type="radio" name="zonecount" value="no"> No &nbsp;

  </div>
  
   <div class="form-group">
    <label >Zones Entered : </label>
    <input type="radio" name="zonecount" value="yes"> 1 &nbsp;
  <input type="radio" name="zonecount" value="no"> 2 &nbsp;
   <input type="radio" name="zonecount" value="yes"> 3 &nbsp;
  <input type="radio" name="zonecount" value="no"> 4 &nbsp;
   <input type="radio" name="zonecount" value="yes"> 5 &nbsp;
  <input type="radio" name="zonecount" value="no"> 6 &nbsp;
   <input type="radio" name="zonecount" value="yes"> 7 &nbsp;


  </div>

  <div class="form-group">
    <label >Time</label>
    <input type="number" class="form-control" id="time" placeholder="Enter Time in Seconds">
  </div>

  
  
 
  
  <script>
  
   function myFunction(){
 roundCount++;
 if(roundCount==1){
 

	
	document.getElementById("t3h2").style.backgroundColor = '#B9B9CD';
	document.getElementById("t3h1").style.backgroundColor = '#4E7092';
	
 }
 else if(roundCount==2){
	
	document.getElementById("t3h3").style.backgroundColor = '#B9B9CD';
	document.getElementById("t3h2").style.backgroundColor = '#4E7092';
 }
 else if(roundCount==3){

	roundCount=0;
	document.getElementById("t3h1").style.backgroundColor = '#B9B9CD';
	document.getElementById("t3h3").style.backgroundColor = '#4E7092';
	alert("All entries completed!!!")
 }
 }
 
 
  </script>
  
</form>
 </div>
 </br>
<button type="submit" class="btn btn-primary" onclick="myFunction()">Submit</button>
 </div>


</body>
</html>