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
<h1>데이터 수정</h1>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String menu = request.getParameter("menu");
	int price = Integer.parseInt(request.getParameter("price"));
	
	System.out.println(menu);
	System.out.println(price);
	System.out.println(id);
%>
<form action = "menuModCom.jsp">
<input type = "hidden" name = "id"  value="<%=id%>">
MENU
<div><input type = "text" name = "menu"  value="<%=menu%>"></div><br>
PRICE
<div><input type = "text" name = "price" value="<%=price%>"></div><br>
<input type = "submit" value = "수정 완료">
</form>

</body>
</html>