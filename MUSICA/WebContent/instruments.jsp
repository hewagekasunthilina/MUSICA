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

<h1 align="center" style="color:gray">VIOLINS</h1>

<div align="center">
	<table align="center" width="900" height="360" frame="none" rules="none" style="border-collapse:collapse;">
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
	   <td colspan="3">
	   
	   
	   
	   	<div class="pagination">
  <a href="#">&laquo;</a>
  <a class="active" href="#">1</a>
  <a href="violin.jsp">2</a>
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
       </table>
       </div>
	   
	   
	   <br>

	   
	   
	   
	   
	   
	   
	   
	   
	   
	   	<h1 align="center" style="color:gray">GUITARS</h1>

<div align="center">
	<table align="center" width="900" height="360" frame="none" rules="none" style="border-collapse:collapse;">
       <colgroup>
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       </colgroup>
       <tbody>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/g1.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo2"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/g2.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo3"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/g3.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div><p id="demo4"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/g4.jpg" alt="Avatar" class="image" style="width:100%"></a>
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
         <a href="#"><img src="images/g5.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo6"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/g6.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo7"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/g7.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/g8.jpg" alt="Avatar" class="image" style="width:100%"></a>
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
		<a class="active" href="#">1</a>
		<a href="guitar.jsp">2</a>
		<a href="guitar3.jsp">3</a>
		<a href="guitar4.jsp">4</a>
		<a href="guitar5.jsp">5</a>
		<a href="guitar6.jsp">6</a>
		<a href="guitar7.jsp">7</a>
		<a href="guitar8.jsp">8</a>
		<a href="guitar9.jsp">9</a>
		<a href="guitar10.jsp">10</a>
		<a href="#">&raquo;</a>
	</div>
	   
	   
	</td>
	</tr>

       </tbody>
       </table>
       </div>
	   
	   <br>
	   
	   
	   
	   
	   
	   
	   	<h1 align="center" style="color:black">PIANOS</h1>

<div align="center">
	<table align="center" width="900" height="360" frame="none" rules="none" style="border-collapse:collapse;">
       <colgroup>
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       </colgroup>
       <tbody>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/p1.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo2"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/p2.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo3"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/p3.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo4"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/p4.jpg" alt="Avatar" class="image" style="width:100%"></a>
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
         <a href="#"><img src="images/p5.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo6"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/p6.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo7"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/p7.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/p8.jpg" alt="Avatar" class="image" style="width:100%"></a>
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
		<a class="active" href="#">1</a>
		<a href="piano.jsp">2</a>
		<a href="piano3.jsp">3</a>
		<a href="piano4.jsp">4</a>
		<a href="piano5.jsp">5</a>
		<a href="piano6.jsp">6</a>
		<a href="piano7.jsp">7</a>
		<a href="piano8.jsp">8</a>
		<a href="piano9.jsp">9</a>
		<a href="piano10.jsp">10</a>
		<a href="#">&raquo;</a>
	</div>
	   
	   
	</td>
	</tr>

       </tbody>
       </table>
       </div>
	   
	   
	   <br>
	   
	   
	   
	   
	   
	   
	   
	   
	   	<h1 align="center" style="color:black">DRUMS</h1>

<div align="center">
	<table align="center" width="900" height="360" frame="none" rules="none" style="border-collapse:collapse;">
       <colgroup>
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       </colgroup>
       <tbody>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/d1.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo2"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/d2.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo3"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/d3.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo4"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/d4.jpg" alt="Avatar" class="image" style="width:100%"></a>
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
         <a href="#"><img src="images/d5.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo6"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/d6.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo7"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/d7.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/d8.jpg" alt="Avatar" class="image" style="width:100%"></a>
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
		<a class="active" href="#">1</a>
		<a href="drum.jsp">2</a>
		<a href="drum3.jsp">3</a>
		<a href="drum4.jsp">4</a>
		<a href="drum5.jsp">5</a>
		<a href="drum6.jsp">6</a>
		<a href="drum7.jsp">7</a>
		<a href="drum8.jsp">8</a>
		<a href="drum9.jsp">9</a>
		<a href="drum10.jsp">10</a>
		<a href="#">&raquo;</a>
	</div>
	   
	   
	</td>
	</tr>

       </tbody>
       </table>
       </div>
	   
	   
	   <br>
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   <h1 align="center" style="color:black">BUFFELS & HEADPHONES</h1>

<div align="center">
	<table align="center" width="900" height="360" frame="none" rules="none" style="border-collapse:collapse;">
       <colgroup>
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       <col width="25%" />
       </colgroup>
       <tbody>
       <tr>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/b1.png" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo2"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/b2.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo3"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/b3.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo4"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/b4.jpg" alt="Avatar" class="image" style="width:100%"></a>
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
         <a href="#"><img src="images/b5.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo6"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/b6.jpg" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo7"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/b7.png" alt="Avatar" class="image" style="width:100%"></a>
         <div class="middle">
           <div class="text">Price :</div>
         </div>
       </div>
		 <div class="bbb"><p id="demo8"></p>

<input type="submit" name="pay" value="PAY"></div>
	   </td>
       <td align="center" valign="middle"><div class="container">
         <a href="#"><img src="images/b8.png" alt="Avatar" class="image" style="width:100%"></a>
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
		<a class="active" href="#">1</a>
		<a href="buffels.jsp">2</a>
		<a href="buffels3.jsp">3</a>
		<a href="buffels4.jsp">4</a>
		<a href="buffels5.jsp">5</a>
		<a href="buffels6.jsp">6</a>
		<a href="buffels7.jsp">7</a>
		<a href="buffels8.jsp">8</a>
		<a href="buffels9.jsp">9</a>
		<a href="buffels10.jsp">10</a>
		<a href="bu">&raquo;</a>
	</div>
	   
	   
	</td>
	</tr>

       </tbody>
       </table>
 </div>     
 <br>
       
<jsp:include page="WEB-INF/views/footer.jsp"/>
</body>
</html>