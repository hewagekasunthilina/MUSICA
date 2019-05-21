<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
        h1{
			color:black;
			text-align: center;
			font-size:60px;
            margin: 80px;
            text-transform:uppercase;
		}
        
		body{
			
			margin: 0px;
		}
        
        .content{
            width: 500px;
            height: auto;
            background-color: white;
            margin-top: 170px;
            margin-left:auto;
            margin-right: auto;
            margin-bottom: 100px;
            padding: 5px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
		.container{
			width:500px;
			height:auto;
			margin-top:50px;
			margin-bottom: 50px;
			text-align:center;
		}
		.container img{
			width:100px;
			height:100px;
			margin-top:-60px;
			margin-bottom:30px;
		}
		.container input[type="text"], .container input[type="password"]{
			border:0;
			background:none;
			
			width:200px;
			color:black;
            font-size: 16px;
			margin-bottom: 20px;
			border:2px solid #3498db;
			text-align:center;
            border-radius: 24px;
			padding:14px 10px;
			outline:none;
			transition:0.25s;
			cursor:pointer;
		}
		
		.container input[type="text"]:focus,.container input[type="password"]:focus{
			width:300px;
			border-color:#2ecc71;
			
		}
		input[type="submit"]{
			border:0;
			background-color:none;
			margin:20px auto;
			text-align:center;
			border:2px solid #2ecc71;
			padding:10px;
			outline:none;
			color:black;
			border-radius:24px;
			transition:0.25s;
			cursor:pointer;
			width:100px;
		}
		
		input[type="submit"]:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        
        span a{
            text-decoration: none;
            color: red;
        }
	</style>

</head>
<body>

	<div class="content">
	
	<h1>Sign Up</h1>
	
	<div class = "container">
	    <img src = "images/avatar.png" alt = "Avatar">
<form class="register" action ="register" method = "post">
<input type="text" placeholder="Enter your firstname" name="firstName" required><br/>
	<input type="text" placeholder="Enter your lastname" name="lastName" required><br/>
	<input type="text" placeholder="Enter your gender" name="gender" required><br/>
	<input type="text" placeholder="Enter your country" name="country" required><br/>
	<input type="text" placeholder="Enter your User name" name="userName" required><br/>
	<input type="text" placeholder="Enter your email" name="email" required><br/>
	<input type="text" placeholder="Enter your mobilenumber" name="mobileNo" required><br/>
	<input type="Password" placeholder="Enter your Password" name="password" required><br/>
	<input type="Password" placeholder="Re-type your Password" name="Password_2" required><br/>
	
<input type= "submit" name = "submit" value ="Submit">
 <span>Allready a member? <a href="login">Login</a></span> <br/> <br/>
</form>
</body>
</html>
