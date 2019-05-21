<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="com.onlinemusicstore.service.GenreServiceImpl"%>
<%@page import="com.onlinemusicstore.service.GenreService"%>
<%@page import="com.onlinemusicstore.model.Genre"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String gen =Integer.parseString(request.getParameter("button"));
	GenreService b =new GenreServiceImpl();
	
%>

<% out.println(getSongGenre(songGenre));%> Songs <br/>
<br/>
Song Name   :<% out.println(b.getSongName(songName));%><br/>
Song Artist :<% out.println(b.getSongArtist(songArtist)); %><br/>
Song BPM    :<% out.println(b.getSongBpm(songBpm));%> <br/>
<br/>
<audio controls>

  <source src="audio/<%=b.getSongName(songName);%> .mp3" type="audio/mp3">
</audio>
<br/>

</body>
</html>