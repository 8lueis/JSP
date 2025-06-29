package PreAddrDB;

public class PreAddrDO {
	// DO: 데이터베이스의 데이터(일반적으로 Row)를 객체화한 클래스 구조
	// 입력 폼과 같은 멤버 변수로 
	private int num;
	private String name;
	private String mobile;
	private String email;
	private String hobby;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	

}
