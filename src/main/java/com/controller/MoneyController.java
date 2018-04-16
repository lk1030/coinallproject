package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.BankDTO;
import com.dto.CashDTO;
import com.service.UserService;

@Controller
public class MoneyController {

	@Autowired
	UserService service;
	
	//계좌 -> 캐시 충전
		@RequestMapping("/CashUp")
		public ModelAndView UserAdd(HttpSession session,@RequestParam("id") String id,@RequestParam("cmoney") int cmoney,CashDTO dto, BankDTO bdto) {

			int selcash = service.cashselect(id);
			int selbank = service.bankselect(id);
			
			dto.setId(id);
			
			if(selcash != 0) {
				dto.setCmoney(selcash+cmoney);
				}else if(selcash == 0) {
				dto.setCmoney(cmoney);
				}
			
			bdto.setId(id);
			bdto.setMoney(selbank-cmoney);
			
			service.cashup(dto);
			service.bankup(bdto);

			ModelAndView mav = new ModelAndView();
			
			mav.setViewName("forward:situationUI");
					
			return mav;			
		}
		
		
		//케시 -> 계좌
		@RequestMapping("/BankAdd")
		public ModelAndView BankAdd(@RequestParam("id") String id,@RequestParam("bmoney") int money,@RequestParam("recmoney") int  recmoney) {
			
		int selcash = service.cashselect(id);
		int selbank = service.bankselect(id);
		
		CashDTO dto = new CashDTO();
		BankDTO bdto = new BankDTO();
		
		bdto.setId(id);
		
		if(selbank != 0) {
		bdto.setMoney(selbank+money);
		}else if(selbank == 0) {
		bdto.setMoney(money);
		}
		
		//계좌에서는 10%를 차감한 금액이 들어가고, 환전은 적은 100% 금액이 다 빠져야 하기 때문에 따로 설정한다.
		dto.setId(id);
		dto.setCmoney(selcash-recmoney);
		
		service.cashup(dto);
		service.bankup(bdto);

		ModelAndView mav = new ModelAndView();
			
		mav.setViewName("forward:situationUI");
			
		return mav;
		
		}
}
