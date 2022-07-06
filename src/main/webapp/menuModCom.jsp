<%@page import="DTO.Menu"%>
<%@page import="DAO.MenuUpdate"%>
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
	int id = Integer.parseInt(request.getParameter("id"));
	String menu = request.getParameter("menu");
	int price = Integer.parseInt(request.getParameter("price"));
	
	System.out.println(menu);
	System.out.println(price);
	System.out.println(id);
	
	Menu mn = new Menu();
	mn.setId(id);
	mn.setMenu(menu);
	mn.setPrice(price);
	
	MenuUpdate mu = new MenuUpdate();
	mu.MenuMod(mn);
%>
<h1>수정완료되었습니다.</h1>
<a href="index.jsp">처음으로</a>
</body>
</html>