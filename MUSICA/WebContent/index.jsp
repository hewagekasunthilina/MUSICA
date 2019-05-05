
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<meta name="viewport" content="width=devicewidth, initial-scale=1">
    
<jsp:include page="WEB-INF/views/header.jsp"/>   <!--Header-->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        
<title>Home | Online Music Store</title>

	


	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

	
	<style>
		
		body{
			background:rgba(0,0,0,0.9);
			margin: 0;
			color: #fff;
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-sarif;
		}
		
		.wrapper{
			padding-top:120px;
			
		}
		

		.showcase::after{
			content: '';
			height: 450px;
			width: 100%;
			background-image: url(images/img1.jpg);
			background-size: cover;
			background-repeat: no-repeat;
			background-position: center;
			display: block;
			filter: blur(8px);
			-webkit-filter:blur(8px);
			transition: all 100ms;
		}

		.showcase:hover::after{
			filter:blur(0px);
			-webkit-filter:blur(0px);
		}

		.showcase:hover .content{
			filter:blur(2px);
			-webkit-filter:blur(2px);
		}

		.content{
			position: absolute;
			z-index: 1;
			top: 10%;
			left: 50%;
			margin-top: 180px;
			margin-left: -250px;
			width: 500px;
			height: 350px;
			text-align: center;
			transition: all 1000ms;
		}

		.content .logo{
			height: 120px;
			width: 200px;
		}

		.content .title{
			font-size: 2.2rem;
			margin-top: 1rem;
		}

		.content .text{
			line-height: 1.7;
			margin-top: 1rem;
		}

		.container{
			max-width: 960px;
			margin: auto;
			overflow: hidden;
			padding: 4rem 1rem;
		}

		.grid-3{
			display: grid;
			grid-gap: 20px;
			grid-template-columns: 1fr 1fr 1fr;
		}

		.center{
			text-align: center;
			margin: auto;
		}

		.bg-light{
			background: #f4f4f4;
			color: #333;
		}

		footer p{
			margin: 0;
		}

		footer{
			padding: 2.2rem;
		}

		/* Responsive part*/

		@media(max-width: 560px){
			.showcase::after{
			height: 50vh;
			}

			.content{
				top: 5%;
				margin-top: 5px;
			}

			.content .logo{
				height: 140px;
				width: 14px;
			}

			.content .text{
				display: none;
			}

			.grid-3, .grid-2{
				grid-template-columns: 1fr;
			}

			.services div{
				border-bottom: #333 dashed 1px;
				padding: 1.2rem 1rem;
			}
		}

		/*Landscape view*/

		@media(max-height: 500px){
			.content .title .text{
				display: none;
			}

			.content{
				top: 0;
			}
		}
		
		/*Button*/
		
		.button {
  		border-radius: 5px;
 		background-color: #B934FB	;
  		border: none;
  		color: black;
  		text-align: center;
  		font-size: 12px;
  		padding: 8px;
  		width: 150px;
 		transition: all 0.5s;
  		cursor: pointer;
  		margin: 20px;
	}	

	.button span {
		 cursor: pointer;
		 display: inline-block;
		 position: relative;
		 transition: 0.5s;
	}

	.button span:after {
 		 content: '\00bb';
 		 position: absolute;
  		 opacity: 0;
 		 top: 0;
 		 right: -20px;
  		 transition: 0.5s;
	}

	.button:hover span {
  		padding-right: 25px;
	}

	.button:hover span:after {
  		pacity: 1;
  		right: 0;
	}
	
	/*services*/
	
	*{
			margin: 0;
			padding: 0;
			font-family: "montserrat", sans-serif;
			box-sizing: border-box;
		}

		.services-section{
			padding: 60px 0;
			background-size: cover;
		}

		.inner-width{
			width:100%;
			max-width: 1200px;
			margin: auto;
			padding: 0 20px;
			overflow: hidden;
		}

		.section-title{
			text-align: center;
			color: #ddd;
			text-transform: uppercase;
			font-size: 30px;
		}

		.border{
			width: 160px;
			height: 2px;
			background: #82ccdd;
			margin: 40px auto
		}

		.services-container{
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
		}

		.service-box{
			max-width: 33.33%;
			padding: 10px;
			text-align: center;
			color: #ddd;
			cursor: pointer;
		}

		.service-icon{
			display: inline-block;
			width: 70px;
			height: 70px;
			border: 3px solid #82ccdd;
			color: #82ccdd;
			transform: rotate(45deg);
			margin-bottom: 30px;
			margin-top: 16px;
			transition: 0.3s linear;
		}

		.service-icon i{
			line-height: 70px;
			transform: rotate(-45deg);
			font-size: 26px;
		}

		.service-box:hover .service-icon{
			background: #82ccdd;
			color: #ddd;
		}

		.service-title{
			font-size: 18px;
			text-transform: uppercase;
			margin-bottom: 10px;
		}

		.service-desc{
			font-size: 14px;
		}
		
		/*image grid*/
		
	.xop-section{
		max-width: 100%;
		margin: 0 auto;
		padding: 6% 2%;
	}

	.xop-grid{
		margin: 20px 0 0 0;
		padding: 0;
		list-style: none;
		display: block;
		text-align: center;
		width: 100%;	
	}

	.xop-grid:after{
		clear: both;
	}

	.xop-grid:after, .xop-box:before{
		content: "";
		display: table;
	}

	.xop-grid li{
		width: 200px;
		height: 200px;
		display: inline-block;
		margin: 20px;
	}

	.xop-box{
		width: 100%;
		height: 100%;
		position: relative;
		cursor: pointer;
		border-radius: 10px;
		-webkit-transition: 0.3s ease-in-out, -webkit-transform 0.3s ease-in-out;
		-moz-transition: 0.3s ease-in-out, -moz-transform 0.3s ease-in-out;
		transition: 0.3s ease-in-out, -webkit-transform 0.3s ease-in-out;
	}

	.xop-box:hover{
		transform: scale(1.05);
	}

	.xop-img-1{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/akira.jpg);
	}

	.xop-img-2{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/aksar.jpg);
	}

	.xop-img-3{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/fanaa.jpg);
	}

	.xop-img-4{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/he_arose.jpg);
	}

	.xop-img-5{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/sardaar.jpg);
	}
	.xop-img-6{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/shaandaar.jpg);
	}
	.xop-img-7{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/switchfoot.jpg);
	}
	.xop-img-8{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/tamaasha.jpg);
	}
	.xop-img-9{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/tere_mere.jpg);
	}
	.xop-img-10{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/third_day.jpg);
	}

	
		
	</style>


</head>
<body>

<div class = "wrapper">
	<div class="showcase">
		<div class="content">
			<img src="images/musica.png" class="logo" alt="musica">
		<div class="title">
				Welcome to Musica
		</div>

			<div class="text">
				Be the food of love, play on..
				
			</div>
		</div>
	</div>

	<section class="services">
		<div class="container grid-3 center">
			<div>
				<i class="fas fa-compact-disc fa-3x"></i>
				<h3>Albums</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>

			<div>
				<i class="fas fa-play fa-3x"></i>
				<h3>listen</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>

			<div>
				<i class="fas fa-download fa-3x"></i>
				<h3>Download</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
		</div>
	</section>

	<section class="about bg-light">
		<div class="container">
			<div class="grid-2">
				<div class="center">
					<i class="fas fa-laptop-code fa-10x"></i>
				</div>

				<div>
					<h3>About Us</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco.</p>
				</div>

			</div>
		</div>
	</section>
	
</div>

<div class="xop-section">
	<h1 class="section-title">Top Rated</h1>
		<div class="border">
			
		</div>
		
	<ul class="xop-grid">
		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-1">	 
			</div>
			</a>
		</li>

		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-2">	 
			</div>
			</a>
		</li>

		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-3">	 
			</div>
			</a>
		</li>

		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-4">	 
			</div>
			</a>
		</li>

		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-5">	 
			</div>
			</a>
		</li>

		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-6">	 
			</div>
			</a>
		</li>
		
		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-7">	 
			</div>
			</a>
		</li>
		
		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-8">	 
			</div>
			</a>
		</li>
		
		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-9">	 
			</div>
			</a>
		</li>
		
		<li>
			<a href = "index.jsp">
			<div class="xop-box xop-img-10">	 
			</div>
			</a>
		</li>
	</ul>
</div>

<div class="services-section">
	<div class="inner-width">
		<h1 class="section-title">Our Services</h1>
		<div class="border">
			
		</div>
		<div class="services-container">
			<div class="service-box">
				<div class="service-icon">
					<i class="fab fa-spotify"></i>
				</div>
				<div class="service-title">Spotify</div>
				<div class="service-desc">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor.
				</div>
			</div>

			<div class="service-box">
				<div class="service-icon">
					<i class="fab fa-amazon-pay"></i>
				</div>
				<div class="service-title">Online Payments</div>
				<div class="service-desc">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor.
				</div>
			</div>

			<div class="service-box">
				<div class="service-icon">
					<i class="fas fa-compact-disc"></i>
				</div>
				<div class="service-title">Music Production</div>
				<div class="service-desc">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor.
				</div>
			</div>

			<div class="service-box">
				<div class="service-icon">
					<i class="fas fa-podcast"></i>
				</div>
				<div class="service-title">Podcasting</div>
				<div class="service-desc">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor.
				</div>
			</div>

			<div class="service-box">
				<div class="service-icon">
					<i class="fab fa-soundcloud"></i>
				</div>
				<div class="service-title">Soundcloud</div>
				<div class="service-desc">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor.
				</div>
			</div>

			<div class="service-box">
				<div class="service-icon">
					<i class="fas fa-cash-register"></i>
				</div>
				<div class="service-title">Online Store</div>
				<div class="service-desc">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor.
				</div>
			</div>
		</div>
	</div>
</div>

	<footer class="center bg-dark">
		<p>MUSICA &copy; 2019</p>
	</footer>

<jsp:include page="WEB-INF/views/footer.jsp"/>

</body>
</html>