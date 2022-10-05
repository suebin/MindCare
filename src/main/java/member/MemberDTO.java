package member;




public class MemberDTO {

	//member table columes
	String id;  //varchar(15) PK not null
	String password;  //varchar(30) not null
	String nickname;  //varchar(15) not null
	String email;  //varchar(30)
	String regdate;  //datetime
	
	//기본생성자
	public MemberDTO() {
	
	}
	
	//매개변수 있는 생성자
	public MemberDTO(String id, String password, String nickname, String email, String regdate) {
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.email = email;
		this.regdate = regdate;
	}
	
	//getter setter
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	//toString
	@Override
	public String toString() {
		return "memberDTO [id=" + id + ", pw=" + password + ", nickname=" + nickname + ", email=" + email + ", regdate="
				+ regdate + "]";
	}
	
}
