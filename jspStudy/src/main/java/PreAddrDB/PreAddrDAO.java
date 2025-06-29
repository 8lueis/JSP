package PreAddrDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import PreAddrDB.PreAddrDO;

public class PreAddrDAO {
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
    
    // 새로운 주소 등록 메서드 
    public void insertAddr(PreAddrDO ado) {
    	// DB 연결
        connect();

        // DB 처리 (실행)
        String sql = "insert into preaddr (name, mobile, email, hobby)" + "values(?,?,?,?)";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, ado.getName());
            pstmt.setString(2, ado.getMobile());
            pstmt.setString(3, ado.getEmail());
            pstmt.setString(4, ado.getHobby());
            
            pstmt.executeUpdate();
            System.out.println("insertAddr 데이터 베이스 처리 완료");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
            disconnect();
    }
    
    // 전체 출력 
    public ArrayList<PreAddrDO> getAllAddress(){
    	connect();
    	
    	ArrayList<PreAddrDO> alist = new ArrayList<PreAddrDO>();
    	String sql = "select * from preaddr";
    	
    	try {
    		pstmt = con.prepareStatement(sql);
    		// 실행
    		rs = pstmt.executeQuery();
    		while(rs.next()) {
    			PreAddrDO ado = new PreAddrDO();
    			ado.setNum(rs.getInt(1)); // num
    			ado.setName(rs.getString(2)); // name
    			ado.setMobile(rs.getString(3)); // mobile
    			ado.setEmail(rs.getString(4)); // email
    			ado.setHobby(rs.getString(5)); // hobby
    			
    			alist.add(ado);
    		}
    		System.out.println("getAllAddress() 처리 완료");
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	disconnect();
    	return alist;
    }
    
    // 값 하나를 가져오기 
    public PreAddrDO getAddressOne(int num) {
    	System.out.println("getAddressOne 처리 시작");
    	connect();
    	PreAddrDO ado = new PreAddrDO();
    	
    	try {
    		String sql = "select * from preaddr where num=?";
    		pstmt = con.prepareStatement(sql);
    		pstmt.setInt(1, num);
    		rs = pstmt.executeQuery();
    		while(rs.next()) {
    			ado.setNum(rs.getInt(1)); 
    			ado.setName(rs.getString(2)); // name
    			ado.setMobile(rs.getString(3)); // mobile
    			ado.setEmail(rs.getString(4)); // email
    			ado.setHobby(rs.getString(5)); // hobby
    		}
    		disconnect();
    		System.out.println("getAddressOne 처리 완료");
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return ado;
    }
    
    public void modifyAddress(PreAddrDO ado) {
    	System.out.println("modifyAddress 처리 시작");
    	connect();
    	try {
    		String sql = "update preaddr set name=?, mobile=?, email=?, hobby=? where num=?";
    		pstmt = con.prepareStatement(sql);
    		
    		pstmt.setString(1, ado.getName());
    		pstmt.setString(2, ado.getMobile());
    		pstmt.setString(3, ado.getEmail());
    		pstmt.setString(4, ado.getHobby());
    		
    		pstmt.setInt(5, ado.getNum());
    		pstmt.executeUpdate();
    		
    		disconnect();
    		System.out.println("modifyAddress 처리 완료");
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    
    }
    public void deleteAddress(int num) {
    	System.out.println("deleteAddress 처리 시작");
    	connect();
    	
    	try {
    		String sql = "delete from preaddr where num=?";
    		pstmt = con.prepareStatement(sql);
    		
    		pstmt.setInt(1, num);
    		pstmt.executeUpdate();
    		disconnect();
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    }

}
