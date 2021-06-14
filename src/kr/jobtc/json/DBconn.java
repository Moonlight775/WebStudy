package kr.jobtc.json;

import java.sql.Connection;
import java.sql.DriverManager;

/* 오라클을 연결하고 최종적으로 Connection 객체를 반환하는 역할 */
public class DBconn {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	String user = "hr";
	String pwd = "2654";
	Connection conn = null; //연결정보
	
	public Connection getConn() {
		try {
			Class.forName(driver); 
			conn = DriverManager.getConnection(url, user, pwd);
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return conn;
	}

}
