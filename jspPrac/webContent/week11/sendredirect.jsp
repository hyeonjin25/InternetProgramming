<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 sendredirect.jsp</title>
</head>
<body>
	<%
	String URL = "https://search.naver.com/search.naver?where=nexearch";
	String keyword = request.getParameter("word");
	URL += "&query=" + keyword;
	response.sendRedirect(URL);
	%>
</body>
</html>