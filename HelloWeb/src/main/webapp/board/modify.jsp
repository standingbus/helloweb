<%@page import="com.yedam.board.BoardVO"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/modify.jsp</title>
</head>
<body>
	<!-- 글번호 기준으로 한건조회 > 페이지작성 > 저장 버튼 클릭하면 변경 후 목록 이동. -->

	<%
	String bid = request.getParameter("no");
	int bno = Integer.parseInt(bid);
	BoardDao dao = BoardDao.getInstance();
	BoardVO brd = dao.select(bno);
	
	
	
	
	
	// null인지 체크.
	%>
	<form action="../modify">
		<table border="1">
			<tr>
				<th>글번호</th>
				<td><input type ="text" readonly name ="no" value = <%=brd.getBrdNo()%>"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type ="text"  name="title" value = "<%=brd.getBrdTitle()%>"></td><br>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type ="text" readonly name = "writer" <%=brd.getBrdWriter()%>"></td>
			</tr>
			<tr>
				<td colspan="2"><textarea  rows="3" cols="30" name = "content"></textarea></td>
			</tr>
			<td colspan="2" align="center">
				<button  onclick="location.href='detail.jsp <%=brd.getBrdNo() %>'">확인</button>
			</td>
		</table>
	</form>
	<%-- <%
	
	
	response.sendRedirect("detail.jsp");
	%> --%>

</body>
</html>