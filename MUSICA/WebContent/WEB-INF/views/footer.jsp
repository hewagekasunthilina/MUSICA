<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

<style>

		*{
			margin: 0;
			padding: 0px;
			box-sizing: border-box;
		}

		a{
			text-decoration: none;
			outline: none;
		}

		.footer-main-div{
			width: 100%;
			height: auto;
			margin: auto;
			background: #272727;
			padding: 20px 0px;
		}

		.footer-social-icons{
			width: 100%;
			height: auto;
			margin: auto;		
		}

		.footer-social-icons ul{
			margin: 0px;
			padding: 0px;
			text-align: center;
		}

		.footer-social-icons ul li{
			display: inline-block;
			width: 50px;
			height: 50px;
			margin: 0px 10px;
			border-radius: 100%;
			background: #B934FB;
		}

		.footer-social-icons ul li a{
			color: #272727;
			font-size: 25px;
			display: block;
		}

		.footer-social-icons ul li a i{
			line-height: 50px;
		}

		.footer-menu-one{
			width: 100%;
			height: auto;
			margin: auto;
			margin-top: 25px;
		}

		.footer-menu-one ul{
			margin: 0px;
			padding: 0px;
			text-align: center;
		}

		.footer-menu-one ul li{
			display: inline-block;
			margin: 0px 15px;
		}

		.footer-menu-one ul li a{
			font-family: arial;
			font-size: 15px;
			font-weight: 600;
			color: #fff;
			text-transform: uppercase;
		}

		.footer-menu-one ul li a:hover{
			color:crimson;
		}

		.footer-menu-two{
			width: 100%;
			height: auto;
			margin: auto;
			margin-top: 10px;
		}

		.footer-menu-two ul{
			margin: 0px;
			padding: 0px;
			text-align: center;
		}

		.footer-menu-two ul li{
			display: inline-block;
			margin: 0px 15px;
		}

		.footer-menu-two ul li a{
			font-family: arial;
			font-size: 15px;
			font-weight: 600;
			color: #fff;
			text-transform: uppercase;
		}

		.footer-menu-two ul li a:hover{
			color: crimson;
		}

		.footer-bottom{
			width: 100%;
			height: auto;
			margin: auto;
			background: #B934FB;
			padding: 10px;
		}

		.footer-bottom{
			font-family: arial;
			font-size: 14px;
			text-align: center;
			color: #fff;
			font-weight: 600;
			letter-spacing: 2px;
		}

		.footer-bottom p{
			color: #fff;
		}

	</style>

</head>
<body>

<div class="footer-main-div">
		
		<div class="footer-social-icons">
			<ul>
				<li><a href="#" target="blank"><i class="fab fa-facebook"></i></a></li>
				<li><a href="#" target="blank"><i class="fab fa-twitter"></i></a></li>
				<li><a href="#" target="blank"><i class="fab fa-google-plus"></i></a></li>
				<li><a href="#" target="blank"><i class="fab fa-youtube"></i></a></li>
			</ul>
		</div>

		<div class="footer-menu-one">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="music.jsp">Music</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>

			<div class="footer-menu-two">
			<ul>
				<li><a href="index.jsp">Blog</a></li>
				<li><a href="music.jsp">News</a></li>
				<li><a href="#">Gallery</a></li>
			</ul>
		</div>


	</div>
</div>
	<div class="footer-bottom">
		<p>Design By : Weekend Kollo</p>
	</div>
	
</body>
</html>