<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제 autoflush.jsp</title>
</head>
<body>
<%@ page autoFlush="false" buffer="1kb" %>
<h2>현재 autoFlush = <%= out.isAutoFlush() %></h2><p>
<%
	for (int i=0; i<25 ; i++){
		out.println("남은 출력버퍼 크기(out.getRemaining()) :"+out.getRemaining()+"<br>");
		if(out.getRemaining()<50){
			out.println("<br");
			out.flush();
		}
	}
%>
<hr>
초기 출력 버퍼 크기 : <%= out.getBufferSize() %> byte<br>
남은 출력 버퍼 크기 : <%= out.getRemaining() %>byte
</body>
</html>