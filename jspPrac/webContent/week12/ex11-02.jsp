<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02</title>
</head>
<body>
<% 
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<h2>로그인 입력 화면에서</h2>
전송된 아이디와 비밀번호는 <br>
<strong><%= id %> <%= pw %></strong> 입니다.
</body>
</html>