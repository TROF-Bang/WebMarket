package mvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	private static Connection conn;    //DB 커넥션(연결) 객체
    private static final String USERNAME = "root";   //DB 접속시 ID
    private static final String PASSWORD = "1234";    //DB 접속시 패스워드
    // No operations allowed after connection closed 오류 해결을 위한 autoReconnect,validationQuery 설정
    private static final String URL = "jdbc:mysql://localhost:3306/webmarketdb?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false&autoReconnect=true&validationQuery=select 1";
    
    public static Connection getConnection() {
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			System.out.println("드라이버 로딩 성공!!");
		} catch (Exception e) {
			System.out.println("드라이버 로딩 실패!!");
			return null;
		}    	
    	return conn;
    }
}
