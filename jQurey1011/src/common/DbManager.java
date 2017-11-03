package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DbManager {
	
	//인스턴스의 주소를 저장하기 위한 참조 변수
	private static Connection conn;
	
	//Connection 관련 정보 상수
	private final static String DRIVER = "oracle.jdbc.driver.OracleDriver";
	
	private final static String URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	
	private final static String USER = "java";
	
	private final static String PASS = "1234";
	
	// 다른곳에서 DbManager 객체를 생성 못하기 위해 막음. = private
	private DbManager(){//default 생성자 생성
	}
	
	//인스턴스를 생성 또는 기존 인스턴스를 반환하는
	public static Connection getConnection(){
		
		conn = null;
		
		if(conn==null){
			try{
				Class.forName(DRIVER);
				conn=DriverManager.getConnection(URL, USER, PASS);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return conn;
	}
	//Select를 수행한 후 자원 해제를 위한 메서드
	//executeQuary 의 close 메서드 구문 ResultSet이 추가되어있음
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs){
		try {
			if(rs != null){
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(conn != null){
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//오버라이딩
	public static void close(Connection conn, PreparedStatement pstmt){
		try {
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(conn != null){
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
