<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userShow</title>
</head>
<body>
	<table border=2>
		<tr>
			<th>id</th>
			<th>이름</th>
			<th>성별</th>
			<th>취미</th>
			<th>전화번호</th>
		</tr>
		<%
	Class.forName("com.mysql.jdbc.Driver");
	try {
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "Rotsltm25!");
		Statement stmt = conn.createStatement();
	      
		String sqlStr = "SELECT * FROM users";

		PreparedStatement pstmt = conn.prepareStatement(sqlStr);
		ResultSet rset = pstmt.executeQuery(sqlStr);
		
		while (rset.next()) {
			  %>
		<tr>
			<td><%= rset.getString("id") %></td>
			<td><%= rset.getString("name") %></td>
			<td><%= rset.getString("sex") %></td>
			<td><%= rset.getString("hobby") %></td>
			<td><%= rset.getString("phone") %></td>
		</tr>
		<%    }
		rset.close();
	    pstmt.close();
	    conn.close();
	} catch (SQLException e) {
		out.println(e.toString());
	}
	%>
	
</body>
</html>