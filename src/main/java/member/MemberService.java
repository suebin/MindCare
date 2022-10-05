package member;


import java.util.List;




public interface MemberService {
	public MemberDTO login(MemberDTO dto) throws Exception;
	
	public void registerMember(MemberDTO dto) throws Exception;
	public int idCheck(MemberDTO dto) throws Exception;
	public int emailCheck(MemberDTO dto) throws Exception;
	public int pwCheck(MemberDTO dto) throws Exception;
	
	public void updateMember(MemberDTO dto) throws Exception;
	public void deleteMember(String id) throws Exception;
	
	public List<MemberDTO> memberList() throws Exception;
	public List<MemberDTO> oneMember(String id) throws Exception;
	public int getCount() throws Exception;
}
