package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dto.BankDTO;
import com.dto.CashDTO;
import com.dto.UserDTO;
import com.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService service;
	
	//아이디 찾기 결과
		@RequestMapping("/searchIdax")
		public ModelAndView searchIdax(@RequestParam ("name") String name, @RequestParam ("ph") String ph, HttpSession session){
			
			String ph1 = ph.substring(0,3);
			String ph2 = ph.substring(3,7);
			String ph3 = ph.substring(7,11);			
			
			HashMap<String, String> map = new HashMap<>();
			map.put("name", name);
			map.put("ph1", ph1);
			map.put("ph2", ph2);
			map.put("ph3", ph3);		
			
			ModelAndView mav = new ModelAndView();
			String url = null;
			try {
				UserDTO dto = service.searchId(map);	
				
				if(dto != null) {
					session.setAttribute("dto", dto);				
					url = "pageA";				
													
				}else {
					url = "hello";			
				}
			}catch (Exception e) {
				url = "hello";
				/*System.out.println("로그인 에러");*/
			}
			mav.setViewName(url);
			return mav;
		}		
		
		//비밀번호 찾기 결과
		@RequestMapping("/searchPwax")
		public ModelAndView searchPwax(@RequestParam ("fid") String id, @RequestParam ("ph") String ph, @RequestParam ("bank") String bank, HttpSession session){
			
			System.out.println(id);
			System.out.println(ph);
			String ph1 = ph.substring(0,3);
			String ph2 = ph.substring(3,7);
			String ph3 = ph.substring(7,11);
			
			HashMap<String, String> map = new HashMap<>();
			map.put("id", id);		
			map.put("ph1", ph1);
			map.put("ph2", ph2);
			map.put("ph3", ph3);
			map.put("bank", bank);
			
			ModelAndView mav = new ModelAndView();
			String url = null;
			try {
				UserDTO dto = service.searchPw(map);	
				
				if(dto != null) {
					session.setAttribute("dto", dto);				
					url = "pageB";				
													
				}else {
					url = "hello";			
				}
			}catch (Exception e) {
				url = "hello";
				/*System.out.println("로그인 에러");*/
			}
			mav.setViewName(url);
			return mav;
		}	
		
		//아이디 찾기 페이지 오픈
		@RequestMapping("/searchId")
		public ModelAndView searchId(){
			
			ModelAndView mav = new ModelAndView();
			
			mav.setViewName("searchId");
			
			return mav;
		}
		
		// 비밀번호 찾기 페이지 오픈
		@RequestMapping("/searchPw")
		public ModelAndView searchPw(){
				
			ModelAndView mav = new ModelAndView();
				
			mav.setViewName("searchPw");
				
			return mav;
		}
	
	//회원가입
	@RequestMapping("/UserAdd")
	public ModelAndView UserAdd(UserDTO udto,CashDTO cdto,BankDTO bdto) {
		
		ModelAndView mav = new ModelAndView();
		
		int cmoney = 0;
		int money = 0;
			
		mav.setViewName("main");
		
		service.userAdd(udto);
		service.useraddcash(cdto);
		service.useraddbank(bdto);
		
		return mav;
			
	}
	
	//로그인
	@RequestMapping("/Logins")
	public ModelAndView Logins(@RequestParam HashMap<String, String> map,HttpSession session) {
		
		ModelAndView mav = new ModelAndView();

		String url;
		
		String id = map.get("id");
		
		UserDTO dto = service.login(map);

		if(dto!=null) {
			int bdto = service.bankselect(id);
			int cdto = service.cashselect(id);
			session.setAttribute("id",id);
			session.setAttribute("login",dto);
			session.setAttribute("bankselect",bdto);
			session.setAttribute("cashselect",cdto);
			url = "forward:situationUI";
		}else {
			String mesg = "아이디 또는 비밀번호가 잘못 되었습니다.";
			session.setAttribute("idpw",mesg);
			url= "login";
		}
		mav.setViewName(url);
		
		return mav;
	}
	
	//캐시 충전 페이지 오픈
	@RequestMapping("/rechargeUI")
	public ModelAndView rechargeUI(HttpSession session) {
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		String url = null;
		ModelAndView mav = new ModelAndView();
			
		if(dto!=null) {
		String id = (String)session.getAttribute("id");		
		int bdto = service.bankselect(id);	
		session.setAttribute("bankselect", bdto);
			url = "mypage/recharge";
		}else if(dto ==null) {
			url = "login";
		}
		mav.setViewName(url);
		return mav;			
	}

	//환급 페이지
	@RequestMapping("/refundUI")
	public ModelAndView refundUI(HttpSession session) {
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		ModelAndView mav = new ModelAndView();
			
		if(dto!=null) {
		String id = (String)session.getAttribute("id");		
		int cdto = service.cashselect(id);	
		session.setAttribute("cashselect", cdto);
			url = "mypage/refund";
		}else if(dto ==null) {
			url = "login";
		}
		mav.setViewName(url);
		return mav;			
	}
	
	//개인정보 수정 페이지 오픈
	@RequestMapping("/informationUI")
	public ModelAndView informationUI(HttpSession session) {
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		ModelAndView mav = new ModelAndView();
		
		if(dto!=null) {
			url = "mypage/revise";
		}else{
			url = "login";
		}
		mav.setViewName(url);
		
		return mav;
			
	}	
	//개인 정보 수정
	@RequestMapping("/UserSu")
	public ModelAndView UserSu(UserDTO udto,HttpSession session) {
		int cmoney = 0;
		int money = 0;
		
		service.userupdate(udto);
		
		HashMap<String, String> map = new HashMap<String,String>();
		
		map.put("id", udto.getId());
		map.put("pw", udto.getPw());
		
		UserDTO dto = service.login(map);
		
		String id = udto.getId();
		
		int bdto = service.bankselect(id);
		int cdto = service.cashselect(id);
		session.setAttribute("id",id);
		session.setAttribute("login",dto);
		session.setAttribute("bankselect",bdto);
		session.setAttribute("cashselect",cdto);	
		
		ModelAndView mav = new ModelAndView();
			
		mav.setViewName("forward:situationUI");
		
		return mav;
			
	}		
	//로그아웃
	@RequestMapping("/LogOut")
	public ModelAndView LogOut(HttpSession session) {
		
		UserDTO dto =(UserDTO)session.getAttribute("login");
		
		String url = "main.jsp";
		
		if(dto==null) {// 비정상 로그아웃 대비
			url="login";
		}else { 
			session.invalidate();
		}
		
		ModelAndView mav = new ModelAndView();
			
		mav.setViewName("main");
		
		return mav;		
	}	
	
	//아이디 체크
	@RequestMapping(value="/idCheck", method=RequestMethod.GET,produces="application/text; charset=UTF-8")
	public @ResponseBody String idCheck(@RequestParam String id) {
		int count = service.idCheck(id);
		
		String counts="0";
		
		if(count==1) {
			counts ="1";
		}	
		return counts;
	}
	
	
}//end class
