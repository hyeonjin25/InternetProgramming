<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String sex = request.getParameter("sex");
String subject[] = request.getParameterValues("subject");
%>
<h4>성별과 좋아하는 과목은</h4>
당신은<strong><%= sex %></strong>이고,<p>
좋아하는 과목으로<br>
<%
for(int i=0; i<subject.length; i++){
	out.println("-<strong>"+subject[i]+"</strong><br>");
}
%>
<p>
을 선택하였군요.
</body>
</html>