package member;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;





@Service("memberservice")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberdao;
	
	
	//로그인
	@Override
	public MemberDTO login(MemberDTO dto)  throws Exception{
		return memberdao.login(dto);
	}
	
	//회원가입
	@Override
	public void registerMember(MemberDTO dto)  throws Exception{
		//db에 회원가입 정보 저장
		memberdao.registerMember(dto);
	}
	
	//아이디 중복체크
	@Override
	public int idCheck(MemberDTO dto) throws Exception {
		int result = memberdao.idCheck(dto);
		return result;
	}
	
	//이메일 중복 체크
	@Override
	public int emailCheck(MemberDTO dto) throws Exception {
		int result = memberdao.emailCheck(dto);
		return result;
	}
	
	//비밀번호 카운트
	@Override
	public int pwCheck(MemberDTO dto) throws Exception {
		int result = memberdao.pwCheck(dto);
		return result;
	}

	//회원정보 수정
	@Override
	public void updateMember(MemberDTO dto)  throws Exception{
		memberdao.updateMember(dto);
	}
	
	//회원 탈퇴
	@Override
	public void deleteMember(String id)  throws Exception{
		memberdao.deleteMember(id);
	}
	
	//회원 리스트 조회
	@Override
	public List<MemberDTO> memberList()  throws Exception{
		List<MemberDTO> list = memberdao.getList();
		int count = memberdao.getCount();
		
		list.add(new MemberDTO(null, null, null, null, null));
		
		return list;
	}

	//회원 한명 선택
	@Override
	public List<MemberDTO> oneMember(String id) throws Exception {
		return memberdao.oneMember(id);
	}
	
	//회원 총합
	@Override
	public int getCount() throws Exception {
		return memberdao.getCount();
	}
	
	
	
}
