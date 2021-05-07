<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- System.out.println은 console창에 출력됨  --%>
	<%
	    System.out.println( "날짜를 출력하여 본다." );
	    java.util.Date date = new java.util.Date();
	%>
	안녕하세요? 현재 시각은 
	<%
	    out.println( String.valueOf( date ));
	%>
입니다.

</body>
</html>