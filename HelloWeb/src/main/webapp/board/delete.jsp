<%@page import="com.yedam.board.BoardVO"%>
<%@page import="com.yedam.board.BoardDao"%>
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
	String bid = request.getParameter("no");
	int bno = Integer.parseInt(bid);
	BoardDao dao = BoardDao.getInstance();
	boolean result = dao.delete(bno); 
	
	response.sendRedirect("blist.jsp");
	
	// null인지 체크.
	%>
</body>
</html>