<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="styles.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>
Robotic Competition(PI WAR)
</title>
</head>
<body class="main">

<!--a comment-->
 <div class="toptab">
  <a href="index.jsp">Home</a>
  <a href="leaderboard.jsp">Leaderboard</a>
  <a href="schedule.jsp">Schedule</a>
  <a class="active" href="login.jsp">Login</a>
  
  
 </div> 
<u><h2>Login </h2></u>
<div class="form1">
<form style="width:60%" action="server.jsp" method="post"> <!--Calling server.jsp to check if it is in database-->
  <div class="form-group">
    <label>Username</label>
    <input type="text" class="form-control" name="username" id="email1"  placeholder="Enter Username" required>
</div>
  <div class="form-group">
    <label>Password</label>
    <input type="password" class="form-control" name="password" id="Password" placeholder="Password" required>
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>
</body>
</html>