<%@page import="com.yedam.common.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="com.yedam.common.productDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
</head>
<body>
	<ul>
	<%
	  productDao dao = new productDao();
	  List<ProductVO> list = dao.list();
	  for (ProductVO vo : list){
	%>
	<li>상품코드: <%=vo.getProduct_name() %> </li>
	<%		  
	  }
	 %>
	 </ul>
	 <a href = "../login/second">second servlet</a>
</body>
</html>