<%@page import="DAO.MenuDelete"%>
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
	
	
%>

<script>
        var result = confirm("삭제하시겠어요 ?");
        
        if(result)
        {
            document.write("<h1> 삭제합니다. </h1>")
            //MenuDelete md = new MenuDelete();
            //md.menuDel();
        }
        else
        {
            document.write("<h1> 삭제하지 않습니다. </h1>")
        }
location.href = "menuSelect.jsp"
</script>
</body>
</html>