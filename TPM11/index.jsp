<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="styles.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>
Robotic Competition
</title>
</head>
<body class="main">

 <div class="toptab">
 
  <a class="active" href="index.jsp">Home</a>
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
  
  
 

<u><h2>Welcome to the Robotic Competition !!! </h2></u>
<br/>
<img src="Robots-fall-league.png" alt="Robot Image" class="center-block" height="300"
width=“500">
<br/>

<p id="des">Pi Wars is an international, challenge-based robotics
 competition in which teams build Raspberry Pi-controlled
 robots and then compete in various non-destructive challenges
 to earn points. The competition takes place over a single weekend
 and prizes and medals are awarded to those competing at the end of each day.
 In previous years, we've had teams from schools, families, groups of hobbyists and solo roboteers.
 We can take up to 76 teams over the event weekend which takes place in Cambridge, UK.
 The competition is open to anyone from around the world. </p>
<canvas id="myCanvas" width="200" height="100"></canvas>

</body>
</html>