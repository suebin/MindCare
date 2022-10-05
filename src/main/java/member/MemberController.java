package member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class MemberController {
	
	
	@Autowired 
	MemberService service;
	
	
	//메인페이지
	@GetMapping ("/main")
	public String main() {
		return "project";
	}
	
	//로그인
	@GetMapping ("/login")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("/login")	
	public String loginprocess(MemberDTO dto,Model model, HttpSession session, HttpServletRequest request) throws Exception {
		
		MemberDTO resultdto = service.login(dto);
		model.addAttribute("list", service.memberList());
		System.out.println(session);
		System.out.println(resultdto);
		if(resultdto != null) {
			session.setAttribute("id", resultdto.getId());
			session.setAttribute("password", resultdto.getPassword());
			session.setAttribute("nickname", resultdto.getNickname());
			session.setAttribute("email", resultdto.getEmail());
			return "redirect:/login";
		}
		else {
			return "redirect:/login";
		}
	}
	
	//로그인 실패 체크
	@ResponseBody
	@GetMapping("/logincheck")
	public String loginCheck(MemberDTO dto) throws Exception {
		int result = service.idCheck(dto);
		int result2 = service.pwCheck(dto);
		int model;
		if(result == 1 && result2 > 0) {
			model = 1;
		}
		else{
			model = 0;
		}
		return "{\"count\" : " + model + "}";
	}
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request ,HttpSession session) {
		session.invalidate();
		System.out.println(session);
		return "redirect:/main";
	}
	

	//회원가입
	@GetMapping("/register")
	public String registerPage() {
		return "member/register";
	}
	
	
	@PostMapping ("/register")
	public String register(MemberDTO dto, Model model) throws Exception {
		
		int result = service.idCheck(dto);
		int result2 = service.emailCheck(dto);
		if(result == 1 || result == 1) {
			model.addAttribute("result", "fail");
		}
		else if(result==0 && result2 == 0) {
			service.registerMember(dto);
			model.addAttribute("result", "ok");
		}
		
		return "redirect:/main";
	}
	
	//id 중복체크
	@ResponseBody
	@GetMapping("/idcheck")
	public int idCheck(MemberDTO dto) throws Exception {
		int result = service.idCheck(dto);
		return result;
	}
	
	//email 중복체크
	@ResponseBody
	@PostMapping("/emailcheck")
	public int emailCheck (MemberDTO dto)  throws Exception {
		int result = service.emailCheck(dto);
		return result;
	}
	
	
	//마이페이지
	@GetMapping("/mypage")
	private String mypage(){
		return "member/mypage";
	}
	
	//회원정보 수정
	@PostMapping("/memberupdate")
	private String updateMember(MemberDTO dto,HttpSession session) throws Exception{
		service.updateMember(dto);
		session.invalidate();
		
		return "redirect:/mypage";
	}
	
	//탈퇴
	@GetMapping("/memberdelete")
	private String deleteMember(MemberDTO dto,HttpSession session) throws Exception{
		String sessionid = (String)session.getAttribute("id");
		service.deleteMember(sessionid);
		session.invalidate();
		
		return "redirect:/main";
	}
	
	
	
}
