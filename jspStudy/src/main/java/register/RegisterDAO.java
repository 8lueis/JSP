package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RegisterDAO {
    String id = "root";
    String passwd = "111111";
    String url = "jdbc:mysql://localhost:3308/jspdb?characterEncoding=utf-8";

    // JDBC 기본 클래스 선언 
    Connection con = null; // DB 연결
    PreparedStatement pstmt = null; // SQL문 구성 
    ResultSet rs = null;

    // DB 연결 메서드
    public void connect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, id, passwd);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    // DB 자원 해제 메서드
    public void disconnect() {
        if (rs != null) {
            try {
                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (con != null) {
            try {
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // 사용자 등록 처리 메서드
    public void insertRegister(RegisterDO rdo) {
    	// DB 연결
        connect();

        // DB 처리 (실행)
        String sql = "insert into register values (?, ?)";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, rdo.getName());
            pstmt.setString(2, rdo.getEmail());
            
            int rs = pstmt.executeUpdate();
            System.out.println("res: "+ rs);
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	// DB 해제 
            disconnect();
        }
    }
    
    // 전체 데이터를 가져오는 메서드 (여러 데이터니까 배열 사용)
    public ArrayList<RegisterDO> getAllRegister(){
    	// DB 연결
    	connect();
    	
    	ArrayList<RegisterDO> rData = new ArrayList<RegisterDO>();
    	String sql = "select * from register";
    	
    	try {
    		pstmt = con.prepareStatement(sql);
    		rs = pstmt.executeQuery();
    	
    		int i = 0;
    		while(rs.next()){  
    			RegisterDO rdo = new RegisterDO();
    			rdo.setName(rs.getString(1));
    			rdo.setEmail(rs.getString(2));
    			System.out.println(i + " <b>name: </b>" + rdo.getName() + ", <b>mail: </b>" + rdo.getEmail()+ "<br>");
    			
    			i ++;
    			rData.add(rdo);
    	}
    	
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	// DB 해제
    	disconnect();
    	return rData;
    }
}
