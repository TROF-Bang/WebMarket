package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	private static Connection conn;    //DB 커넥션(연결) 객체
    private static final String USERNAME = "root";   //DB 접속시 ID
    private static final String PASSWORD = "1234";    //DB 접속시 패스워드
    private static final String URL = "jdbc:mysql://localhost:3306/webmarketdb?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
    
    public static Connection getConnection() {
    	try {
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			System.out.println("드라이버 로딩 성공!!");
		} catch (SQLException e) {
			System.out.println("드라이버 로딩 실패!!");
			return null;
		}    	
    	return conn;
    }
}
