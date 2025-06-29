package FinalDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class FinalDAO {
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
    
    public void insertPost(FinalDO fdo) {
    	connect();
    	
    	String sql = "insert into post (choice ,title, date, memo)" + "values(?, ?, ?, ?)";
    	
    	try {
    		pstmt = con.prepareStatement(sql);
    		
    		// value 값 
    		pstmt.setString(1, fdo.getChoice());
    		pstmt.setString(2, fdo.getTitle());
    		pstmt.setString(3, fdo.getDate());
    		pstmt.setString(4, fdo.getMemo());
    		
    		// 실행 
    		pstmt.executeUpdate();
    		System.out.println("insertPost() 처리 완료");
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	disconnect();
    }
    
   public ArrayList<FinalDO> getAllPost(){
	   connect();
	   
	   ArrayList<FinalDO> fList = new ArrayList<FinalDO>();
	   String sql = "select * from post";
	   
	   try {
		   pstmt = con.prepareStatement(sql);
		   rs = pstmt.executeQuery(); 
		   
		   while(rs.next()) {
			   FinalDO fdo = new FinalDO();
			   fdo.setId(rs.getInt(1)); // id
			   fdo.setChoice(rs.getString(2)); // choice
			   fdo.setTitle(rs.getString(3)); // title
			   fdo.setDate(rs.getString(4)); // date
			   fdo.setMemo(rs.getString(5)); // memo
			   
			   fList.add(fdo);
		   }
		   System.out.println("getAllPost() 처리 완료");
	   }catch(Exception e) {
   		e.printStackTrace();
   		}
	   disconnect();
	   
	   return fList;
   	
   }
   
   public void deletePost(int id) {
	   connect();
	   
	   try {
		   String sql = "delete from post where id=?";
		   pstmt = con.prepareStatement(sql);
		   pstmt.setInt(1, id);
		   pstmt.executeUpdate();
		   disconnect();
		   System.out.println("deletePost() 처리 완료");
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	   
	   
	   
   }
   
   public void modifyPost(FinalDO fdo) {
	   // delete -> id가 일치하면 삭제
	   // modify -> 전체 내용 가져와서(DO class) 수정
	   
	   connect();
	   try {
		   String sql = "update post set choice=?, title=?, date=?, memo=? " + "where id=?";
		   pstmt = con.prepareStatement(sql);
   		
	   		// value 값 
	   		pstmt.setString(1, fdo.getChoice());
	   		pstmt.setString(2, fdo.getTitle());
	   		pstmt.setString(3, fdo.getDate());
	   		pstmt.setString(4, fdo.getMemo());
	   		
	   		pstmt.setInt(5, fdo.getId());
	   		
	   		// 실행 
	   		pstmt.executeUpdate();
	   		
	   		System.out.println("modifyPost() 처리 완료");
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
   }
   
   // 수정 시 하나의 게시물만 가져오기
   public FinalDO getPostOne(int id) {
	   connect();
	   FinalDO fdo = new FinalDO();
	   try {
		   String sql = "select * from post where id=?";
		   pstmt = con.prepareStatement(sql);
		   pstmt.setInt(1,  id);
		   rs = pstmt.executeQuery();
		   while(rs.next()) {
			   fdo.setId(rs.getInt(1)); // id
			   fdo.setChoice(rs.getString(2)); // choice
			   fdo.setTitle(rs.getString(3)); // title
			   fdo.setDate(rs.getString(4)); // date
			   fdo.setMemo(rs.getString(5)); // memo
		   }
		   disconnect();
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	   return fdo;
   }

}
