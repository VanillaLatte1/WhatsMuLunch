<%@page import="DTO.Menu"%>
<%@page import="DAO.MenuInsert"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>menu데이터를 받아서 DB에 넣어보자</h1><br>
<%
	//menuInsert.jsp에서 menu 데이터가 들어오면 
	String menu = request.getParameter("menu");
	Menu Mn = new Menu();
	Mn.setMenu(menu);
	out.println(menu);
	
	String price = request.getParameter("price");
	Mn.setPrice(Integer.parseInt(price));
	out.println(price);
	
	//해당 데이터 DB에 넣기
	MenuInsert mi = new MenuInsert();
	
	mi.MenuIns(menu, price);
%>
<h2><a href = "index.jsp">처음으로</a></h2>
</body>
</html>