<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 request3.jsp</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
	<h2>취미와 가보고 싶은 국가 결과</h2>
	<%
	Enumeration<String> e = request.getParameterNames();

	while (e.hasMoreElements()) {
		String name = e.nextElement();
		String[] data = request.getParameterValues(name);
		if (data != null) {
			for (String eachdata : data){
						out.println(eachdata + " ");
			}
		}
		out.println("<p>");
	}
	%>
</body>
</html>