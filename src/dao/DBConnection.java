package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	private static Connection conn;    //DB Ŀ�ؼ�(����) ��ü
    private static final String USERNAME = "root";   //DB ���ӽ� ID
    private static final String PASSWORD = "1234";    //DB ���ӽ� �н�����
    private static final String URL = "jdbc:mysql://localhost:3306/webmarketdb?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
    
    public static Connection getConnection() {
    	try {
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			System.out.println("����̹� �ε� ����!!");
		} catch (SQLException e) {
			System.out.println("����̹� �ε� ����!!");
			return null;
		}    	
    	return conn;
    }
}
