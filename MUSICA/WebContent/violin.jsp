<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <jsp:include page="WEB-INF/views/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<style>
			body{
			background:rgba(0,0,0,0.9);
			margin: 0;
			color: #fff;
			}
.container {
    position: relative;
    width: 100%;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: #4CAF50;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
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
  opacity: 1;
  right: 0;
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
		
		
		
		
		
		/*pagination*/

.pagination a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
}

.pagination a.active {
    background-color: dodgerblue;
    color: white;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

		
	</style>

</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h1 align="center" style="color:black">VIOLINS</h1>

<p align="center">
	<table width="900" height="360" frame="none" rules="none" style="border-collapse:collapse;">
       <colgroup>
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       </colgroup>
       <tbody>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v1.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo2"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v2.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo3"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v3.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo4"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v4.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo5"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       </tr>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v5.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo6"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v6.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo7"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v7.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v8.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       </tr>
	   
	   
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v1.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo2"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v2.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo3"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v3.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo4"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v4.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo5"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       </tr>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v5.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo6"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v6.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo7"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v7.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v8.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       </tr>

       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v1.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo2"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v2.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo3"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v3.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo4"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v4.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo5"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       </tr>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v5.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo6"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v6.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo7"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v7.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v8.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       </tr>	   


       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v1.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo2"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v2.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo3"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v3.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo4"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v4.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo5"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       </tr>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v5.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo6"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v6.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo7"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v7.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/v8.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       </tr>	   
	   
	   
	   
	   <tr>
	   <td colspan="3">
	   
	   
	   
	   	<div class="pagination">
  <a href="#">&laquo;</a>
  <a href="instruments.jsp">1</a>
  <a class="active" href="#">2</a>
  <a href="violin3.jsp">3</a>
  <a href="violin4.jsp">4</a>
  <a href="violin5.jsp">5</a>
  <a href="violin6.jsp">6</a>
  <a href="violin7.jsp">7</a>
  <a href="violin8.jsp">8</a>
  <a href="violin9.jsp">9</a>
  <a href="violin10.jsp">10</a>
  <a href="#">&raquo;</a>
</div>
	   
	   
	   </td>
	   </tr>

       </tbody>
       </table></p>
	   
	   
	   <br>
	   
	   <jsp:include page="WEB-INF/views/footer.jsp"/>
</body>
</html>	   