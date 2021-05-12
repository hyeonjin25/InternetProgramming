<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2>session 예제</h2>
<hr>
<%
	//isNew() 메서드를 이용해 최초세션설정을 확인하고 있다.
	if(session.isNew()){
		out.println("<script> alert('세션이 해제되어 다시설정합니다.')</script>");
		session.setAttribute("login","ok");
	}
%>
1. 세션 ID : <%= session.getId() %><br>
2. 세션 유지시간 : <%= session.getMaxInactiveInterval() %><br>
3. login 세션의 설정 값: <%= session.getAttribute("login") %><br>
</body>
</html>