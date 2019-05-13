
<%@page import = "javax.servlet.http.HttpSession" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	   

		 <style>
		
		*{
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		html{
			font-size: 10px;
			font-family: "Roboto Cn", sans-serif;
		}

		body{
			overflow-x: hidden;
		}

		a{
			text-decoration: none;
			color: #eee;
		}

		header{
			width: 100%;
			height: 100vh;
			background: linear-gradient(rgba(0,0,0,.2), rgba(0,0,0,.3)), url(images/cover.png) center no-repeat;
			background-size: cover;
			height: 120px;
			position:fixed;
			z-index:2;
			
		}

		.container{
			max-width: 120em;
			width: 90%;
			margin: 0 auto;
		}

		nav{
			padding-top: 0rem;
			display: flex;
			justify-content: space-between;
			align-items: center;
			text-transform: uppercase;
			font-size: 1.6rem;
		}

		.musica{
			font-size: 3rem;
			font-weight: 600;
			transform: translateX(-100rem);
			animation: slideIn .5s forwards;
			
		}

		.musica span{
			color: crimson;
		}

		nav ul{
			display: flex;
		}

		nav ul li{
			list-style: none;
			transform: translateX(100rem);
			animation: slideIn .5s forwards;
		}

		nav ul li:nth-child(1){
			animation-delay: 0s;
		}

		nav ul li:nth-child(2){
			animation-delay: .5s;
		}

		nav ul li:nth-child(3){
			animation-delay: 1s;
		}

		nav ul li:nth-child(4){
			animation-delay: 1.5s;
		}

		nav ul li a{
			padding: 1rem 0;
			margin: 0 3rem;
			position: relative;
			letter-spacing: 2px;
		}

		nav ul li a:last-child{
			margin-right: 0;
		}

		nav ul li a::before,
		nav ul li a::after{
			content: '';
			position: absolute;
			width: 100%;
			height: 2px;
			background-color: crimson;
			left: 0;
			transform: scaleX(0);
			transition: all .5s;
		}

		nav ul li a::before{
			top: 0;
			transform-origin: left;
		}

		nav ul li a::after{
			bottom: 0;transform-origin: right;
		}

		nav ul li a:hover::before,
		nav ul li a:hover::after{
			transform: scaleX(1);
		}

		@keyframes slideIn{
			from{

			}

			to{
				transform: translateX(0);
			}
		}
		
		/*Button*/
		
	.container .button {
  		border-radius: 5px;
 		background-color: #B934FB	;
  		border: none;
  		color: black;
  		text-align: center;
  		font-size: 10px;
  		padding: 7px;
  		width: 100px;
 		transition: all 0.5s;
  		cursor: pointer;
  		margin: 20px;
  		font-weight: 600;
	}	

	.container .button span {
		 cursor: pointer;
		 display: inline-block;
		 position: relative;
		 transition: 0.5s;
	}

	.container .button span:after {
 		 content: '\00bb';
 		 position: absolute;
  		 opacity: 0;
 		 top: 0;
 		 right: -20px;
  		 transition: 0.5s;
	}

	.container .button:hover span {
  		padding-right: 25px;
	}

	.container .button:hover span:after {
  		pacity: 1;
  		right: 0;
	}
		
		
		
	</style>

</head>
<body>

	<header>
		<div class="container">
			<nav>
				<h1 class="musica"><a href="index.jsp">MU<span>S</span>ICA</a></h1>
					
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="music.jsp">Music</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				

				
				<% if(request.getSession(false).getAttribute("currentSessionUser")==null){ %>
				<a href = "login.jsp"><button class="button"><span>LOGIN </span></button></a>
				<a href = "signin.jsp"><button class="button"><span>SIGNUP </span></button></a>
				<%} else { %>
				
				<a href = "Logout">
					<button type = "submit" class = "button">Logout</button>
				</a>
				
				<a href = "profile">
					<button class = "account"></button>
					
					<span style = "color:white; float:right; margin-right:20px; padding-top:4px;">
						<% %>
					</span>
					</a>
					<%} %>
			</nav>
		</div>
			
	</header>




</body>
</html>