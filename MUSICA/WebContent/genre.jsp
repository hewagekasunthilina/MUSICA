<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.onlinemusicstore.service.GenreServiceImpl"%>
<%@page import="com.onlinemusicstore.service.GenreService"%>
<%@page import="com.onlinemusicstore.model.Genre"%>   

<jsp:include page="WEB-INF/views/header.jsp"/> <!--Header-->    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Genre</title>

<style type="text/css">

section{
padding-top: 140px;
}

#h2 {
  text-align: center;
  color: grey;
  width: 400px;
  padding: 100px;
  margin-left: 450px;
  margin-left: 480px;
  margin-bottom: -10px;
}

.title{
  color: grey;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after{
  box-sizing: inherit;
}

.column{
  float: left;
  width: 25%;

  margin-bottom: 16px;
  padding: 0 8px;
}


@media screen and (max-width:650px) {
  .column{
    width: 100%;
    display: block;
  }
}



.card{
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container{
  padding: 1px 16px 16px 16px;
  padding: 1px 16px 1px 16px;
  margin-top: -5px;
}

.container::after, .row::after{
  content: "";
  clear: both;
  display: table;
}

.button1{
  border: none;
  border-radius: 4px;
  opacity: 100%;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #0079AF;
  text-align: center;
  cursor: pointer;
  width: 100%;
  margin-top: 15px;
  
}

.button:hover{
  background-color: #555;
}



.select-items div:hover, .same-as-selected{
  background-color: rgba(0, 0, 0, 0.1);
}

.checked{
  color: orange;
}

#h3{
  font-family: Aller;
  text-align: center;
  font-size: 24px;
  margin-top: 13px;
}

.area {
  font-family: Aller;
  text-align: center;
  font-size: 16px;
  margin-top: 10px;
}

.rating{
  margin-left: 100px;
  margin-top: -10px;
 }
</style> 	

</head>
<body>
<section>

<%
	
GenreServiceImpl  a =new GenreServiceImpl();
	
%>
<form method="POST" action="GenreServlet">
<div class="new">

</div><div class="column">
  <div class="card">
    <img src="images/edm.jpg" alt="Sohan" style="width:100%">
    <div class="container">
      
      <p class="area"><%=a.getsongCount("edm")%>Songs</p>
      <div class="rating">
      
      </div>
      <P><a><button value="edm" class="button1">Check Songs</button></a></p>
    </div>
  </div>
</div>

<div class="column">
  <div class="card">
    <img src="images\rock.jpg" alt="Sohan" style="width:100%">
    <div class="container">
      <p class="area"><%=a.getsongCount("rock")%> Songs</p>
      <div class="rating">

      </div>
      <P><button value="rock"  class="button1">Check Songs</button></p>
    </div>
  </div>
</div>

<div class="column">
  <div class="card">
    <img src="images\hiphop.jpg" alt="Sohan" style="width:100%">
    <div class="container">
      <p class="area"><%=a.getsongCount("hiphop")%> Songs</p>
      <div class="rating">
       
      </div>
      <P><button value="hiphop" class="button1">Check Songs</button></p>
    </div>
  </div>
</div>


<div class="column">
  <div class="card">
    <img src="images\jazz.jpg" alt="Sohan" style="width:100%">
    <div class="container">
      <p class="area"><%=a.getsongCount("jazz")%> Songs</p>
      <div class="rating">
     
      </div>
      <P><button value="jazz" class="button1">Check Songs</button></p>
    </div>
  </div>
</div>

<div class="column">
  <div class="card">
    <img src="images\rap.jpg" alt="Sohan" style="width:100%">
    <div class="container">
      <p class="area"><%=a.getsongCount("rap")%> Songs</p>
      <div class="rating">
   
      </div>
      <P><button value="rap"  class="button1">Check Songs</button></p>
    </div>
  </div>
</div>

<div class="column">
  <div class="card">
    <img src="images\rnb.png" alt="Sohan" style="width:100%">
    <div class="container">
      <p class="area"><%=a.getsongCount("rnb")%> Songs</p>
      <div class="rating">
        
      </div>
      <P><button value="rnb"  class="button1">Check Songs</button></p>
    </div>
  </div>
</div>

<div class="column">
  <div class="card">
    <img src="images\cm.png" alt="Sohan" style="width:100%">
    <div class="container">S
      <p class="area"><%=a.getsongCount("cm")%> Songs</p>
      <div class="rating">
 
      </div>
      <P><button value="cm" class="button1">Check Songs</button></p>
    </div>
  </div>
</div>
</form>
</section>
</body>
</html>