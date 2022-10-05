package member;

import java.util.List;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberdao")
public class MemberDAO {
	@Autowired
	SqlSession session;
	
	
	//로그인
		public MemberDTO login(MemberDTO dto) throws Exception{
			MemberDTO resultdto = null;
			try {
			resultdto = session.selectOne("member.login", dto);
			}catch(Exception e){
				e.printStackTrace();
			}
			return resultdto;
		}
		

	//회원가입
	public void registerMember(MemberDTO dto) throws Exception{
		session.insert("member.insertmember", dto);
	}
	
	//아이디 중복 체크
	public int idCheck(MemberDTO dto) throws Exception{
		return session.selectOne("member.idcheck", dto);
	}
	
	//이메일 중복 체크
	public int emailCheck(MemberDTO dto) throws Exception{
		return session.selectOne("member.emailcheck", dto);
	}
	
	//패스워드 카운트
	public int pwCheck(MemberDTO dto) throws Exception{
		return session.selectOne("member.pwcheck", dto);
	}
	
	//회원정보 수정
	public void updateMember(MemberDTO dto) throws Exception{
		session.update("member.updatemember", dto);
	}
	
	//탈퇴
	public void deleteMember(String id) throws Exception{
		session.delete("member.deletemember", id);
	}
	
	//result값 1개 선택
	public List<MemberDTO> oneMember(String id) throws Exception{
		return session.selectList("member.onemember",id);
	}
	
	//전체 회원 리스트
	public List<MemberDTO> getList() throws Exception{
		return session.selectList("member.memberlist");
	}
	
	//전체 회원 수
	public int getCount() throws Exception{
		return session.selectOne("member.membercount");
	}
}
