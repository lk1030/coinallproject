package com.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.CoinaddDTO;
import com.dto.PrchDTO;
import com.dto.UserDTO;
import com.service.CoinService;
import com.service.UserService;

@Controller
public class CartController {

	@Autowired
	UserService service;
	
	@Autowired
	CoinService coinservice;
	
	//차트페이지 오픈 맵핑
	@RequestMapping("/chartUI")
	public ModelAndView chartUI(){
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("chart/chart");
		
		return mav;
	}
	//1
	@RequestMapping("/Bitadd")
	public ModelAndView Bitadd(@RequestParam ("bitga") String bitga,@RequestParam ("bitsu") String bitsu,
								@RequestParam ("allbitga") String allbitga,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Bit");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Bit",bitsu,day,bitga);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int bitsuint = Integer.parseInt(bitsu);
				int sumsu = hyunsu+bitsuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Bit",ssumsu,day,bitga);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}
	//2
	@RequestMapping("/Twoadd")
	public ModelAndView Twoadd(@RequestParam ("twoga") String twoga,@RequestParam ("twosu") String twosu,
								@RequestParam ("alltwoga") String alltwoga,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Two");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Two",twosu,day,twoga);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int twosuint = Integer.parseInt(twosu);
				int sumsu = hyunsu+twosuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Two",ssumsu,day,twoga);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}

	//3
	@RequestMapping("/Threeadd")
	public ModelAndView Threeadd(@RequestParam ("threega") String threega,@RequestParam ("threesu") String threesu,
								@RequestParam ("allthreega") String allthreega,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Three");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Three",threesu,day,threega);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int threesuint = Integer.parseInt(threesu);
				int sumsu = hyunsu+threesuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Three",ssumsu,day,threega);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}
	
	//4
	@RequestMapping("/Fouradd")
	public ModelAndView Fouradd(@RequestParam ("fourga") String fourga,@RequestParam ("foursu") String foursu,
								@RequestParam ("allfourga") String allfourga,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Four");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Four",foursu,day,fourga);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int foursuint = Integer.parseInt(foursu);
				int sumsu = hyunsu+foursuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Four",ssumsu,day,fourga);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}

	//5
	@RequestMapping("/Fiveadd")
	public ModelAndView Fiveadd(@RequestParam ("fivega") String fivega,@RequestParam ("fivesu") String fivesu,
								@RequestParam ("allfivega") String allfivega,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Five");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Five",fivesu,day,fivega);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int fivesuint = Integer.parseInt(fivesu);
				int sumsu = hyunsu+fivesuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Five",ssumsu,day,fivega);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}

	//6
	@RequestMapping("/Sixadd")
	public ModelAndView Sixadd(@RequestParam ("sixga") String sixga,@RequestParam ("sixsu") String sixsu,
								@RequestParam ("allsixga") String allsixga,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Six");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Six",sixsu,day,sixga);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int sixsuint = Integer.parseInt(sixsu);
				int sumsu = hyunsu+sixsuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Six",ssumsu,day,sixga);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}

	//7
	@RequestMapping("/Sevenadd")
	public ModelAndView Sevenadd(@RequestParam ("sevenga") String sevenga,@RequestParam ("sevensu") String sevensu,
								@RequestParam ("allsevenga") String allsevenga,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Seven");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Seven",sevensu,day,sevenga);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int sevensuint = Integer.parseInt(sevensu);
				int sumsu = hyunsu+sevensuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Seven",ssumsu,day,sevenga);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}

	//8
	@RequestMapping("/Eightadd")
	public ModelAndView Eightadd(@RequestParam ("eightga") String eightga,@RequestParam ("eightsu") String eightsu,
								@RequestParam ("alleightga") String alleightga,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Eight");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Eight",eightsu,day,eightga);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int eightsuint = Integer.parseInt(eightsu);
				int sumsu = hyunsu+eightsuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Eight",ssumsu,day,eightga);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}

	//9
	@RequestMapping("/Nineadd")
	public ModelAndView Nineadd(@RequestParam ("ninega") String ninega,@RequestParam ("ninesu") String ninesu,
								@RequestParam ("allninega") String allninega,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Nine");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Nine",ninesu,day,ninega);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int ninesuint = Integer.parseInt(ninesu);
				int sumsu = hyunsu+ninesuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Nine",ssumsu,day,ninega);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}

	//10
	@RequestMapping("/Tenadd")
	public ModelAndView Tenadd(@RequestParam ("tenga") String tenga,@RequestParam ("tensu") String tensu,
								@RequestParam ("alltenga") String alltenga,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
			Calendar cal = Calendar.getInstance();
			String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
			String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
			String day = m+"-"+d;
		
			CoinaddDTO cdto = null;
			map.put("id", dto.getId());
			map.put("coinname", "Ten");
			int coincount = coinservice.coinaddCount(map);
		
			if(coincount == 0) {
				cdto = new CoinaddDTO(dto.getId(),"Ten",tensu,day,tenga);
				coinservice.coinadd(cdto);
			}else {
				int hyunsu = coinservice.mycoinCount(map);
				int tensuint = Integer.parseInt(tensu);
				int sumsu = hyunsu+tensuint;
				String ssumsu = String.valueOf(sumsu);
				cdto = new CoinaddDTO(dto.getId(),"Ten",ssumsu,day,tenga);
				coinservice.coinaddupdate(cdto);
			}
		
			url = "forward:situationUI";
				}else{
			url = "login";
				}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}

		
}
