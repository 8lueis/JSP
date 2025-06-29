package jspStudy;

public class LoginBean {
	// 멤버 변수와 멤버 메서드로 구성 
	// <div>아이디: <input type="text" name="id"></div>
	// <div>패스워드: <input type="text" name="password"></div>
	//의 name 속성의 이름과 아래 빈즈 클래스의 멤버 변수의 이름을 같게 설정 
	// why? setProperty, getProperty의 작동을 위함 
	private String id;
	private String password;
	
	// DB 데모 데이터 
	final String db_id = "hong";
	final String db_password = "1234";
	public boolean checkUser() {
		if(db_id.equals(id) && db_password.equals(password)) {
			return true;
		}else {
			return false;
		}
	}
	
	//멤버 메서드 자동 생성 방법: 우클릭 리소스 > generate getter setter ...
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

	
}
