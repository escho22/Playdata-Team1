package com.example.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	@Autowired
	@Qualifier("com.example.member.MemberServiceImpl")
	private MemberService service;

	public MemberController() {
		System.out.println("---> MemberController created");
	}

	@RequestMapping(value = "/member/create", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/create");
		
		return mav;
	}

	@RequestMapping(value = "/member/create", method = RequestMethod.POST)
	public ModelAndView create(MemberVO memberVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = service.create(memberVO);
		mav.addObject("cnt", cnt);
		mav.addObject("url", "create_msg");

		mav.setViewName("redirect:/member/msg");

		return mav;
	}

}
