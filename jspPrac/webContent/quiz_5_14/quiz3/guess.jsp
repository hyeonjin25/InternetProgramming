<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	
	/* 지금까지 저장된 숫자 리스트 가져와서 숫자 추가한 후 다시 저장 */
	ArrayList<Integer> numList = (ArrayList)session.getAttribute("numList");
	/* 배열이 비어있을 경우 */
	if(numList==null){
		numList = new ArrayList<Integer>();
	    session.setAttribute("numList",numList);
	}
	numList.add(num);
	session.setAttribute("numList", numList);
	
	int answer = 7;
	String hint = "";
	if (num == answer) {
		hint = "Very good, you are right.";
	} else if (num > answer) {
		hint = "Try again and input a smaller number";
	} else if (num < answer) {
		hint = "Try again and input a larger number";
	}
	request.setAttribute("hint", hint);
	request.setAttribute("hint", hint);
 	pageContext.forward("startup.jsp"); 
	%>
</body>
</html>