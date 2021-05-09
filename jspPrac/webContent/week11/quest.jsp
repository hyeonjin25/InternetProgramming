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
%>

	<%
	String name = request.getParameter("name");
	String phoneNum = request.getParameter("phoneNum");
	String sex = request.getParameter("sex");
	String country = request.getParameter("country");
	
	if(sex.equalsIgnoreCase("man")){
		sex="남자";
	}else{
		sex="여자";
	}	
	
	String[] hobby = request.getParameterValues("hobby");
	
	%>
	

	<h2>회원 정보 입력 결과</h2>
	
	성명 : <%= name %><p>
	전화번호 : <%= phoneNum %><p>
	성별 : <%= sex %><p>
	국적 : <%= country%><p>
	취미: <%
	if(hobby!=null){
		for(String ho : hobby){
			out.println(ho+" " );
		}
	}
	 %>
	
</body>
</html>