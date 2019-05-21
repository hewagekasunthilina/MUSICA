<%@page import="com.onlinemusicstore.service.InstrumentServiceImpl"%>
<%@page import="com.onlinemusicstore.service.instrumentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.onlinemusicstore.model.instruments"%>
<%@page import = "java.util.Base64" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<Style>  
      h1{
			color:purple;
			text-align: center;
			font-size:60px;
            margin: 80px;
            text-transform:uppercase;
		}
		
	    input[type="button"]{
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
		
		input[type="button"]:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
</style>

<title>User View Music Instruments </title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<br>

<h1>Buy your Music Instrument from us....</h1>
<br>
<br>

<div class="row">
<%
		instrumentService iservice = new InstrumentServiceImpl();
    	ArrayList<instruments> list= iservice.getAllInstrument(); 
    	if(list!=null){
    		for(instruments instrument:list){
    			byte[] imgData = instrument.getImage().getBytes(1,(int) instrument.getImage().length());
    			  String encode = Base64.getEncoder().encodeToString(imgData);
    			  request.setAttribute("imgBase", encode);
    %>
    <div class="card" style="width: 21rem;">
  <img class="card-img-top" src="data:image/jpeg;base64,${imgBase}" width="100%" height="250">
  <div class="card-body">
    <h5 class="card-title"><%out.println(instrument.getName());%></h5>
    <p class="card-text"><%out.println(instrument.getItemcode());%></p>
     <p class="card-text"><%out.println(instrument.getWarrenty());%></p>
      <p class="card-text"><%out.println(instrument.getPrice());%></p>
       
    <a href="#" class="btn btn-danger">Details</a>
    <a href="#" class="btn btn-primary">Pay</a>
  </div>
</div>
    
<%}
    	}
    	%>
</div>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<br>    
<a href= "music.jsp"><input type="button" name="Back" value="Back"></a>
</body>
</html>