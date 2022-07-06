package DAO;

import java.sql.*;

public class MenuUpdate {
	public void MenuMod(int id, String menu, int price) {
	        //쿼리문 준비
			final String driver = "org.mariadb.jdbc.Driver";
	        final String DB_IP = "localhost";
	        final String DB_PORT = "3306";
	        final String DB_NAME = "mydb";
	        final String DB_USER = "root";
	        final String DB_PASS = "1234";
	        final String DB_URL = "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;
	        Connection conn = null;		//db 연결
	        PreparedStatement pstmt = null;		//쿼리 생성
	        
	        String sql = "UPDATE `tb_menu` SET `menu`= ?, `price` = ? WHERE  `id`= ?;";
	        try {
	            Class.forName(driver);		//jdbc 라이브러리
	            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, menu);
	            pstmt.setInt(2, price);
	            pstmt.setInt(3, id);

	            int result = pstmt.executeUpdate();
	            if (result == 1) {
	                System.out.println("데이터 삽입 성공!");
	            }

	        } catch (Exception e) {
	            System.out.println("데이터 삽입 실패!");
	        } finally {
	            try {
	                if (pstmt != null && !pstmt.isClosed()) {
	                    pstmt.close();
	                }
	            } catch (Exception e2) {
	                e2.printStackTrace();
	            }
	        }
	}

}
