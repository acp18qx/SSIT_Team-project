<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="styles.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

  
$(function() {
  $('#category').change(function(){
  $('.colors').hide();
  $('#' + $(this).val()).show();    
  });
});
</script>

<title>
Robotic Competition
</title>
</head>
<body class="main">


  <div class="toptab">
 
  <a  href="index.jsp">Home</a>
  <a class="active" href="leaderboard.jsp">Leaderboard</a>
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
  
  

<u><h1>Leaderboard </h1></u>

<br/>
<div align="center">
<form style="width:60%">

<div class="form-group">
    <label>Filter</label>
	
     <select class="form-group" id="category">
	 
	 <option value="blastoff">Blast Off: the Straight-ish Line Speed Test</option>
	 <option value="pinoon">Pi Noon: The Right Stuff</option>
	 <option value="overall" >Overall</option>
  <option value="hubble">The Hubble Telescope Nebula</option>
  <option value="canyons">The Canyons of Mars</option>
  
 
  
</select> 
</div>
</form>
</div>

<div id="blastoff" class="colors" class="colors all">
<h2>Speed Test Top Times</h2>
</br>
 <table id="table1"  align="center" >
  <tr style="background-color:  #9dd3e4 ; font-size: 25px; ">
    <th style="width: 30px">Rank</th>
    <th>Time(In Seconds)</th>
  </tr>
  <tr>
    <td style="width: 30px">1</td>
    <td >32</td>
  </tr>
  <tr>
    <td style="width: 30px">2</td>
    <td s>36</td>
  </tr>
   <tr>
    <td style="width: 30px">3</td>
    <td >45</td>
  </tr>
  <tr>
    <td style="width: 30px">4</td>
    <td >48</td>
  </tr>
  <tr>
    <td style="width: 30px">5</td>
    <td >50</td>
  </tr>
</table> 
</div>
<div id="pinoon" class="colors" align="center">
<h2>Pi Noon: The Right Stuff </h2>
</br>
<main id="tournament">
 <ul class="round round-1">
        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Challengers</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Beat Boxer</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Station Rappers</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Jobs</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top ">Green Team</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom winner">Lotus</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Rich Goods</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">A Team</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Morphies</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Kotters</span></li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Michells</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Van Wide</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Large Bridge</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Shadow Hunter</span></li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Meet Us</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Albany</li>

        <li class="spacer">&nbsp;</li>
    </ul>
    <ul class="round round-2">
        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Challengers</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Station Rappers</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Lotus</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Rich Goods</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top ">Morphies</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom winner">Michells</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top ">Large Bridge</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom winner">Meet Us</li>

        <li class="spacer">&nbsp;</li>
    </ul>
    <ul class="round round-3">
        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top winner">Challengers</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Lotus</li>

        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top ">Michells</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom winner">Meet Us</li>

        <li class="spacer">&nbsp;</li>
    </ul>
    <ul class="round round-4">
        <li class="spacer">&nbsp;</li>
        
        <li class="game game-top">Challengers</li>
        <li class="game game-spacer">&nbsp;</li>
        <li class="game game-bottom ">Meet Us</li>
        
        <li class="spacer">&nbsp;</li>
    </ul> 
	</main>

</div>

<div id="overall" class="colors" align="center">
<h2>Overall Ranking </h2>
</br>
  <p class="rankdes">Overall Ranking is not available until the end of the day</p>

</div>

<div id="hubble" class="colors" align="center">
<h2>The Hubble Telescope Nebula </h2>
</br>
  <p class="rankdes">The Hubble Telescope Nebula Ranking will be posted at the end of the day</p>

</div>

<div id="canyons" class="colors" class="colors all" align="center">
<h2>The Canyons of Mars </h2>
</br>
  <p class="rankdes">The Canyons of Mars Ranking will be posted at the end of the day</p>  

</div>








</body>
</html>