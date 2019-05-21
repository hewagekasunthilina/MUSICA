<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="WEB-INF/views/header.jsp"/>  <!--Header-->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Music | Online Music Store</title>

<style>
	
	body{
		margin: 0;
		padding: 0;
	}

	.banner{
		width: 100%;
		height: 100vh;
		overflow: hidden;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.banner video{
		position: absolute;
		top: 0;
		left: 0;
		object-fit: cover;
		width: 100%;
		height: 100%;
		pointer-events: none;
	}

	.banner .content{
		position: relative;
		z-index: 1;
		max-width: 1000px;
		margin: 0 auto;
		text-align: center;
	}

	.banner .content h1{
		margin: 0;
		padding: 0;
		font-size: 4.5em;
		text-transform: uppercase;
		color: #fff;
	}

	.banner .content p{
		font-size: 1.5em;
		color: #fff;
	}
	
	/*buttons on video*/
	
	
	.btn .button {
	  border-radius: 4px;
	  background-color: #B934FB;
	  border: none;
	  color: black;
	  text-align: center;
	  font-size: 13px;
	  font-weight: 600;
	  padding: 13px;
	  width: 150px;
	  transition: all 0.5s;
	  cursor: pointer;
	  margin: 5px;
	  opacity:0.5;
	}

	.btn .button span {
	  cursor: pointer;
	  display: inline-block;
	  position: relative;
	  transition: 0.5s;
	}

	.btn .button span:after {
	  content: '\00bb';
	  position: absolute;
	  opacity: 0;
	  top: 0;
	  right: -20px;
	  transition: 0.5s;
	}

	.btn .button:hover span {
  	padding-right: 25px;
	}

	.btn .button:hover span:after {
	  opacity: 1;
	  right: 0;
	}

</style>

</head>
<body>

<div class="banner">
	<video autoplay loop mute>
		<source src="videos/video1.mp4" type="video/mp4">
		
	</video>
	
	<div class="content">
		<h1>Your Music Store In Here</h1>
<<<<<<< HEAD
		<p>Musica is an onine music store which can listen to songs and can download them with their music videos. Or else you can download Lyrics about a particular song you want to get to know. In here you can find trending songs in world. Also you can find artists and albums which they are related to. MUSICA LET THE MUSIC WORLD TO GET TO YOUR FINGER TIPS. </p>
		
=======

>>>>>>> 702498d1469bea9e6ec61becba1cf272eac7386e
		<div class = "btn">
		<a href = "genre.jsp"><button class="button"><span>Albums </span></button></a>
		<a href= "artist.jsp"><button class="button"><span>Artist </span></button></a>
		<a href= "userviewInstruments.jsp"><button class="button"><span>Instruments </span></button></a>
		<button class="button"><span>Store </span></button>
		</div>
	</div>
</div>	

<jsp:include page="WEB-INF/views/footer.jsp"/>

</body>
</html>