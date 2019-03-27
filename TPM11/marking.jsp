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
 <%
        
        
        
        if(username==null){
            %>
			<script>
			window.location.href = "login.jsp";
			</script>
			<%
        }
	
       
        %>


<u><h2>Marking </h2></u>

<table id="table3" align="center">
  
  <tr>
      <td > <button class="btnn2" onClick="func1()"><img src="img/hubble.jpg" width="100px" height="100px"></i>Hubble</button>
 <script type="text/javascript" language="JavaScript">
                  function func1()
            {

                window.location = 'hubble.jsp'

            }
             </script></td>
    <td ><button class="btnn2" onClick="func2()"><img src="img/canyons.png" width="100px" height="100px">Canyons</button>
 <script type="text/javascript" language="JavaScript">
                  function func2()
            {

                window.location = 'canyons.jsp'

            }
             </script>
            </td>
			</td>
    <td ><button class="btnn2" onClick="func3()"><img src="img/speed.jpg" width="100px" height="100px">Speed Test</button>
 <script type="text/javascript" language="JavaScript">
                  function func3()
            {

                window.location = 'speedtest.jsp'

            }
             </script>
            </td>
			</td>
    <td ><button class="btnn2" onClick="func4()"><img src="img/pinoon.jpg" width="100px" height="100px">Pi Noon</button>
 <script type="text/javascript" language="JavaScript">
                  function func4()
            {

                window.location = 'pinoon.jsp'

            }
             </script>
            </td>
			
			</tr>
			<tr >
      <td > <button class="btnn2" onClick="func5()"><img src="img/space.png" width="100px" height="100px">Space Invaders</button>
 <script type="text/javascript" language="JavaScript">
                  function func5()
            {

                window.location = 'spaceinvaders.jsp'

            }
             </script></td>
    <td ><button class="btnn2" onClick="func6()"><img src="img/spirit.png" width="100px" height="100px">Spirit Of Curiosity</button>
 <script type="text/javascript" language="JavaScript">
                  function func6()
            {

                window.location = 'spirit.jsp'

            }
             </script>
            </td>
			</td>
    <td ><button class="btnn2" onClick="func7()"><img src="img/obstacles.png" width="100px" height="100px">Obstacle Course</button>
 <script type="text/javascript" language="JavaScript">
                  function func7()
            {

                window.location = 'obstacle.jsp'

            }
             </script>
            </td>
			<% if(!role.equals("2")){ %>
			<td ><button class="btnn2" onClick="func8()"><img src="img/blogging.png" width="100px" height="100px">Blogging</button>
 <script type="text/javascript" language="JavaScript">
                  function func8()
            {

                window.location = 'blogging.jsp'

            }
             </script>
            </td>
			
			</tr>
			<tr >
      <td > <button class="btnn2" onClick="func9()"><img src="img/challenge.png" width="100px" height="100px">Technical Merit</button>
 <script type="text/javascript" language="JavaScript">
                  function func9()
            {

                window.location = 'technical.jsp'

            }
             </script></td>
    <td ><button class="btnn2" onClick="func10()"><img src="img/artistic.png" width="100px" height="100px">Artistic Merit</button>
 <script type="text/javascript" language="JavaScript">
                  function func10()
            {

                window.location = 'artistic.jsp'

            }
             </script>
            </td>
			</td>
    <td ><button class="btnn2" onClick="func11()"><img src="img/future.png" width="100px" height="100px">Most Space Age Robot</button>
 <script type="text/javascript" language="JavaScript">
                  function func11()
            {

                window.location = 'spaceage.jsp'

            }
             </script>
            </td>
			<%
			}
			if(role.equals("1")){
			%>
			
			<td ><button class="btnn2" onClick="func12()"><img src="img/dashboard.png" width="100px" height="100px">DashBoard</button>
 <script type="text/javascript" language="JavaScript">
                  function func12()
            {

                window.location = 'panel.jsp'

            }
             </script>
            </td>
			<%
			}
			%>
			
			</tr>
			
			
</table>
</body>
</html>