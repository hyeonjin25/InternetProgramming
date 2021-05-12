<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	Hello world!!!
	<br />
	<%
	out.println("Your IP add is" + request.getRemoteAddr());
	%>
	<form action="session2.jsp" method="post">
		please input your name: 
		<input type="text" name="thename"> 
		<input type="submit" value="submit">
	</form>
</body>
</html>