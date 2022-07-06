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
		final String driver = "org.mariadb.jdbc.Driver";
		final String DB_IP = "localhost";
		final String DB_PORT = "3306";
		final String DB_NAME = "mydb";
		final String DB_USER = "root";
		final String DB_PASS = "1234";
		final String DB_URL = "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;
		Connection conn = null;		//db 연결
		PreparedStatement pstmt = null;		//쿼리 생성
		ResultSet rs = null;		//select 이후 나오는 결과값
		
		String sql = "SELECT * FROM tb_menu ORDER BY RAND() LIMIT 1";
		try {
		    Class.forName(driver);		//jdbc 라이브러리
		    conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
		    
		    if (conn != null) {
		        System.out.println("DB 접속 성공");
		        pstmt = conn.prepareStatement(sql);
		        rs = pstmt.executeQuery();
		        
		        while (rs.next()) {
		            String menu = rs.getString("menu");
		            String price = rs.getString("price");                    
		            out.println("메뉴 : " + menu + "<br>");
		            out.println("가격 : " + price + "<br>");
		            System.out.println(menu);
		            System.out.println(price);
		        }
		    }
		} catch (ClassNotFoundException e) {
		    System.out.println("드라이버 로드 실패");
		    e.printStackTrace();
		} catch (Exception e) {
		    System.out.println("데이터 삽입 실패");
		    e.printStackTrace();
		} finally {
		    try {
		    	if (rs != null) {
		            rs.close();
		        }
		        if (pstmt != null && !pstmt.isClosed()) {
		            pstmt.close();
		        }
		        if (conn != null && !conn.isClosed()) {
		            conn.close();
		        }
		    } catch (Exception e2) {
		        e2.printStackTrace();
		    }
		}
%>
<h2><a href = "index.jsp">처음으로</a></h2>
</body>
</html>