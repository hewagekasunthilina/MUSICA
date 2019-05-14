<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Dashboard | Musica</title>

<style>

        h1{
			color:black;
			text-align: center;
			font-size:60px;
            margin: 80px;
		}
        
		body{
			
			margin: 0px;
			background: #313131;
		}
        
        .mainArea{
            width: auto;
            height: 700px;
            margin-top: 70px;
            
        }
        
        .sideBar{
            width: 290px;
            height: 560px;
            margin-left: 30px;
            margin-right: 5px;
            margin-top: 50px;
            margin-bottom: 30px;
            padding: 5px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: left;
        }
        
        .content{
            min-width: 940px;
            height: 530px;
            margin-top: 50px;
            margin-bottom: 30px;
            margin-right: auto;
            margin-left: 5px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: right;
            text-align = left;
            
        }
        
        input[type="text"], input[type="email"]{
			width:600px;
			height:20px;
            font-size: 16px;
			margin-bottom: 20px;
			border:1px solid gray;
            border-radius: 5px;
			padding:10px;
		}
        
        
        
        input[type="submit"], .back{
			height: 50px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		 input[type="reset"]{
			height: 50px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		input[type="submit"]:hover, .back:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        
        
        input[type="reset"]:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
		
		/*dropdown*/
		
		.dropbtn {
		  background-color: #D8A6F9;
		  color: white;
		  padding: 16px;
		  font-size: 16px;
		  border: none;
		  border-radius: 10px;
		  width:200px;
}

		.dropdown {
		  position: relative;
		  display: inline-block;
}

		.dropdown-content {
		  display: none;
		  position: absolute;
		  background-color: #f1f1f1;
		  min-width: 200px;
		  box-shadow: 0px 8px 16px 0px rgba(0,0,0,1.2);
		  z-index: 1;
		  border-radius: 10px;
		  margin-top:4px;
}

		.dropdown-content a {
		  color: black;
		  padding: 12px 16px;
		  text-decoration: none;
		  display: block;
		  text-align: center;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
        

	</style>

</head>
<body>

<div class="mainArea" align="center">
        <div class="sideBar" align="center">
        	<img src = "images/side.png" width = "280px" height="550px">
        </div>
        <div class="content">
            
			<font size = "10" font-weight: 600;><b> DASBOARD </b></font>
			<br>
			
			
        		<p style="color: green;" align="center"><br/></p>
        	
			<div class="dropdown">
  				<button class="dropbtn">Music</button>
  					<div class="dropdown-content">
    					<a href="addMusic.jsp">Add Music</a>
    					<a href="updateMusic.jsp">Update Music</a>
    					<a href="removeMusic.jsp">Remove Music</a>
    					
 					 </div>
 		    </div>
 		    
 		    <div class="dropdown">
  				<button class="dropbtn">Instrument</button>
  					<div class="dropdown-content">
    					<a href="addInstrument.jsp">Add Instrument</a>
    					<a href="updateInstrument.jsp">Update Instrument</a>
    					<a href="removeInstrument.jsp">Remove Instrument</a>
    					
 					 </div>
 		    </div>
 		    
 		    <div class="dropdown">
  				<button class="dropbtn">User</button>
  					<div class="dropdown-content">
    					<a href="addUser.jsp">Add User</a>
    					<a href="updateUser.jsp">Update User</a>
    					<a href="removeUser.jsp">Remove User</a>
    					
 					 </div>
 		    </div>
 		 
 		  
            
            <a href="edit-music"><button class="back" style="width: 180px;">Back</button></a>
            <a href="Logout"><button class="back" style="width: 180px;">Logout</button></a>
            
        </div>
    </div>

</body>
</html>