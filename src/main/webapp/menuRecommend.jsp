<%@page import="DAO.MenuSelect"%>
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
<h1>오늘 점심은 이거다</h1><br>
<%
	MenuSelect ms = new MenuSelect();
	ms.menuSel();
%>
<h2><a href = "index.jsp">처음으로</a></h2>
</body>
</html>