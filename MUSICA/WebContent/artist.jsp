<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="WEB-INF/views/header.jsp"/> <!--Header-->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Artist | Online Music Store</title>

	<style>
		
	body{
		margin: 0;
		padding: 0;
		background: #313131;
	}
	

	.slider{
		width: 100%;
		height: 350px;
		background: url(images/artist2.jpg);
		margin: 100px auto;
		animation: slide 20s infinite;
		position: absolute;
	}

	@keyframes slide{
		25%{
			background: url(images/artist2.jpg);

		}

		50%{
			background: url(images/artist1.jpg);
		}

		75%{
			background: url(images/artist4.jpg);
		}

		100%{
			background: url(images/artist3.jpg);
		}
	}
	
	/*artist grid*/
	
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
	
	
	.xop-section{
		max-width: 100%;
		margin: 0 auto;
		padding: 6% 2%;
		padding-top:500px;

	}
	
	.xop-section-2{
		max-width: 100%;
		margin: 0 auto;
		padding: 6% 2%;
		padding-top:50px;

	}
	
	.xop-section-3{
		max-width: 100%;
		margin: 0 auto;
		padding: 6% 2%;
		padding-top:50px;

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
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist1.png);
	}

	.xop-img-2{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist2.png);
	}

	.xop-img-3{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist3.png);
	}

	.xop-img-4{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist4.png);
	}

	.xop-img-5{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist5.png);
	}
	.xop-img-6{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist6.png);
	}
	.xop-img-7{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist7.png);
	}
	.xop-img-8{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist8.png);
	}
	.xop-img-9{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist9.png);
	}
	.xop-img-10{
		background: linear-gradient(rgba(0,0,0,0.50), rgba(0,0,0,0.10)), url(images/SArtist10.png);
	}
	

	</style>

</head>
<body>

	<div class="slider">
		
	</div>


<div class="xop-section">
	<h1 class="section-title">Sinhala Artists</h1>
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

<!-- Englist Artist -->

<div class="xop-section-2">
	<h1 class="section-title">English Artists</h1>
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

<!-- Hindi Artist -->

<div class="xop-section-3">
	<h1 class="section-title">Hindi Artists</h1>
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


</body>
</html>