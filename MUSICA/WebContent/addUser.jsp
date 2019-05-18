
<%@page import="com.onlinemusicstore.model.Music"%>
<%@page import="com.onlinemusicstore.model.User"%>

<jsp:include page="WEB-INF/views/header.jsp"/>

<!DOCTYPE html>
<html>
<head>

	 <%
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	 
	 	User user = (User) session.getAttribute("currentSessionUser");
	 
	 	String confirm = (String) request.getAttribute("confirmString");
	 	
		if(user == null || user.getType().equals("user")){
			
			response.sendRedirect("index.jsp");
		}
    %>

	<title> ADD MUSIC | MUSICA </title>
	
	<style>

        h1{
			color:black;
			text-align: center;
			font-size:60px;
            margin: 80px;
		}
        
		body{
			
			margin: 0;
			background: #313131;
		}
        
        .mainArea{
            width: auto;
            height: 800px;
            padding-top: 100px;
        }
        
        .sideBar{
            width: 290px;
            height: 560px;
            margin-left: 30px;
            margin-right: 5px;
            margin-top: 50px;
            margin-bottom: 30px;
            padding: 5px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: left;
        }
        
        .content{
            min-width: 940px;
            height: 530px;
            margin-top: 50px;
            margin-bottom: 30px;
            margin-right: auto;
            margin-left: 5px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.1);
            float: right;
            text-align = left;
        }
        
        input[type="text"], input[type="email"]{
			width:600px;
			height:20px;
            font-size: 16px;
			margin-bottom: 20px;
			border:1px solid gray;
            border-radius: 5px;
			padding:10px;
		}
        
        
        
        input[type="submit"], .back{
			height: 50px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		 input[type="reset"]{
			height: 50px;
			width: 85px;
			padding: 5px;
			font-size: 16px;
			color: white;
			background-color: red;
			border: 0px;
			border-radius: 5px;
			transition: background-color 0.2s ease-in-out;
		}
		
		input[type="submit"]:hover, .back:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        
        
        input[type="reset"]:hover{
			color: red;
			background-color: white;
			border: 1px solid red;
			border-radius: 5px;
		}
        

	</style>
	
</head>
<body>
    
    <div class="mainArea" align = "center">
        <div class="sideBar">
        	<img src = "images/side.png" width = "280px" height="550px">
        </div>
        <div class="content" align = "center">
            
			<font size = "10" ><b> ADD NEW USER </b></font>
			<br>
			
			<% if(confirm != null) { %>
        		<p style="color: green;" align="center"><br/><%= confirm %></p>
        	<%} %>
			
			<form method = "POST" action = "add-user">

				  <input type = "text" name = "firstName" placeholder = "Add First Name" required/><br>
				  <input type = "text" name="lastName" placeholder="Add Last Name" required><br/><br/>
				  <input type = "text" name="gender" placeholder="Add Gender" required><br/><br/>
				  <input type = "text" name="country" placeholder="Add Country" required><br/><br/>
				  <input type = "text" name="userName" placeholder="Add User Name" required><br/><br/>
				  <input type = "text" name="email" placeholder="Add Email" required><br/><br/>
				  <input type = "text" name="mobileNo" placeholder="Add Mobile Number" required><br/><br/>
				  <input type = "text" name="password" placeholder="Add Password" required><br/><br/>
				  <input type = "text" name="type" placeholder="Add Type" required><br/><br/>
				  
				  <input type = "submit" value = "Add"/> &nbsp;
				  <input type = "reset" value = "Reset"/> <br/> <br/>
  
			</form>
            
            <a href="edit-music"><button class="back" style="width: 180px;">Back</button></a>
            
        </div>
    </div>
    
    <jsp:include page="WEB-INF/views/footer.jsp"/>
    
</body>
</html>