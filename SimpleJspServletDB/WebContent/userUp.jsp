<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert user inform</title>
</head>
<body>
<form method="post">
	이름: <input type="text" name="name"><br>
	성별: <input type="text" name="sex"><br>
	취미: <input type="text" name="hobby"><br>
	전화번호: <input type="tel" name="phone"><br>
	<input type="submit" value="추가">
	<input type="button" value="회원 정보 조회" onclick="location='userShow.jsp'">
</form>

<!-- 데이터 받아서 db에 저장 -->
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	String hobby = request.getParameter("hobby");
	String phone = request.getParameter("phone");
	
	if(name != null){
	%>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	try {
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "Rotsltm25!");

		String sqlStr = "INSERT INTO users (`name`, `sex`, `hobby`, `phone`) VALUES (?,?,?,?)";

		PreparedStatement pstmt = conn.prepareStatement(sqlStr);
		pstmt.setString(1, name);
		pstmt.setString(2, sex);
		pstmt.setString(3, hobby);
		pstmt.setString(4, phone);

		pstmt.execute();
		pstmt.close();
	} catch (SQLException e) {
		out.println(e.toString());
	}}
	%>

</body>
</html>