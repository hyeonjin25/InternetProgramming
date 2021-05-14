<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session track</title>
</head>
<body>
<h2>Session track</h2>
<%!int count = 0;%>
	<%
	String scount = (String) application.getAttribute("count");
	if (scount != null) {
		count = Integer.parseInt(scount);
	} else {
		count = 0;
	}
	application.setAttribute("count", Integer.toString(++count));
	%>
<table border="1px" style="margin:0 auto">
	<tr style="background-color: gray">
		<th> Session info</th>
		<th> detail</th>
	</tr>
	<tr>
		<td> Session id</td>
		<td> <%= session.getId() %></td>
	</tr>
	<tr>
		<td> Creation time</td>
		<td> <% out.print(new java.util.Date(session.getCreationTime())); %> </td>
	</tr>
	<tr>
		<td> Last access time </td>
		<td> <% out.print(new java.util.Date(session.getLastAccessedTime())); %></td>
	</tr>
	<tr>
		<td> Access count </td>
		<td> <%= count %> </td>
	</tr>

</table>
</body>
</html>