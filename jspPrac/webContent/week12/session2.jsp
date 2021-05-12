<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
	//한글이 깨지므로 추가
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("thename");
	session.setAttribute("thename", name);
	%>
	what's your name :
	<%=name%>
	<p>
	<form action="session3.jsp?pwd=123456" method="post">
		what do you like? <input type="text" name="food">
		<p>
			<input type="submit" value="submit">
	</form>
</body>
</html>