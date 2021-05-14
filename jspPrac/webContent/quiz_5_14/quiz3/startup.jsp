<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>start up</title>
</head>
<body>

	<h1>Guess Number</h1>
	<form method="post" action="guess.jsp">
		Guess a number in [0, 10]<br> 
		<input type="text" name="num"><br>
		<input type="submit" value="guess"><br> 
		<input type="button" value="reset the game" onclick="res();">
		<p>
	</form>
	
	<%
	request.setCharacterEncoding("utf-8");
	String hint = (String)request.getAttribute("hint");
	ArrayList<Integer> numList = (ArrayList)session.getAttribute("numList");
	%>
	
	<%= hint %><br>
	The guessed history :
	<%
	if(numList!=null){
		for(int i=0; i<numList.size(); i++){
			out.print(numList.get(i)+" ");
		}
	}
	%>
</body>
</html>