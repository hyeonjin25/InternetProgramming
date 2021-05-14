<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ex11-04.jsp" method="post" >
	<h4>성별과 좋아하는 과목 조사</h4>
	
	1.성별을 선택하세요.[Radio버튼]<br>
	<input type="radio" name="sex" value="남자">남자
	<input type="radio" name="sex" value="여자">여자<p>
	
	2.좋아하는 과목을 선택하세요.[Checkbox]<br>
	<input type="checkbox" name="subject" value="SQL응용">SQL응용<br>
	<input type="checkbox" name="subject" value="DB개발도구">DB개발도구<br>
	<input type="checkbox" name="subject" value="JSP">JSP<br>
	<input type="checkbox" name="subject" value="오라클실무">오라클실무<br>
	<input type="checkbox" name="subject" value="ERP구축">ERP구축<p>
	<input type="submit" value="확인">
</form>
</body>
</html>