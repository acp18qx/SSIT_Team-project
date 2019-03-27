<%

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1" ,"root", "dil123"); //connecting to database
Statement s1= conn.createStatement(); //creating statements...common for every db connection
					
					%>