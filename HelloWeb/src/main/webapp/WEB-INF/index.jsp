<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>hello, world</h3>
	<p>Java Server Page</p>
	<%
		String name = "HongKilDong";
		int age = 20;
	%>
	<h3>이름은 <%=name %></h3>
	<h3>나이는 <%=age %></h3>
</body>
</html>