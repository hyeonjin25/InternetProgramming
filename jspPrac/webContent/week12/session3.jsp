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
String food=request.getParameter("food");
String name=(String)session.getAttribute("thename");
String pwd=request.getParameter("pwd");
%>
Your name is : <%= name %>
<p>
Your favorite food is: <%= food %>
<p>
Your password is : <%=pwd %>

<form action="hidden.jsp" method="post" name="form1">
<input type="hidden" name="time" value="<%=new java.util.Date() %>">
<p>
Hidden Test Name:<input type="text" name="name">
</p>
<input type="submit" value="submit" name="submit">
</form>
</body>
</html>