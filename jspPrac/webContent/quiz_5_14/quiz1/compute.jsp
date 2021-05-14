<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>compute</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String message = request.getParameter("message");
	%>
	(Get the input message):
	<%=message%><br> (The length of the message):
	<%=message.length()%><p>
	
	<%
		for(int i=1; i<message.length()+1; i++){
			out.print(i);
			for(int j=0; j<i; j++){
				out.print("*");
			}
			out.print("<br>");
		}
	%>
</body>
</html>