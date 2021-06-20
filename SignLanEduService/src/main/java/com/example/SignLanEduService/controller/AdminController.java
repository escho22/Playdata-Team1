package com.example.SignLanEduService.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.SignLanEduService.service.LearnService;
import com.example.SignLanEduService.service.MemberService;
import com.example.SignLanEduService.service.QuizService;
import com.example.SignLanEduService.service.WordService;
import com.example.SignLanEduService.vo.MemberVO;

@Controller
public class AdminController {

	@Autowired
	@Qualifier("com.example.SignLanEduService.service.QuizServiceImpl")
	private QuizService qservice;
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.MemberServiceImpl")
	private MemberService mservice;

	@Autowired
	@Qualifier("com.example.SignLanEduService.service.WordServiceImpl")
	private WordService wservice;
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.LearnServiceImpl")
	private LearnService lservice;

	public AdminController() {
		System.out.println("--> AdminController created.");
	}
		
	@RequestMapping(value = "/admin/select", method = RequestMethod.GET)
	public ModelAndView adminSelect() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/select");
		return mav;
	}
	
	//control page-------------------------------------------------------
	
	@RequestMapping(value = "/admin/control/choose", method = RequestMethod.GET)
	public ModelAndView adminControl() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/control/choose");
		return mav;
	}
		
	@RequestMapping(value = "/admin/control/memberUpdate", method = RequestMethod.GET)
	public ModelAndView adminMemberUpdate() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/control/memberUpdate");
		return mav;
	}
	
	@RequestMapping(value = "/admin/control/memberDelete", method = RequestMethod.GET)
	public ModelAndView adminMemberDelete() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/control/memberDelete");
		return mav;
	}
	
	@RequestMapping(value = "/admin/control/wordCreate", method = RequestMethod.GET)
	public ModelAndView adminWordCreate() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/control/wordCreate");
		return mav;
	}
	
	@RequestMapping(value = "/admin/control/adminCreate", method = RequestMethod.GET)
	public ModelAndView adminCreate() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/control/adminCreate");
		return mav;
	}
	
	//stats page-------------------------------------------------------
	
	@RequestMapping(value = "/admin/stats/choose", method = RequestMethod.GET)
	public ModelAndView adminStats() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/stats/choose");
		return mav;
	}
	
	@RequestMapping(value = "/admin/stats/memberList", method = RequestMethod.GET)
	public ModelAndView adminMemberList() {
		ModelAndView mav = new ModelAndView();
		
		List<MemberVO> list = this.mservice.list();
		
		mav.addObject("list",list);
		
		mav.setViewName("/admin/stats/memberList");
		return mav;
	}
	
	@RequestMapping(value = "/admin/stats/learnList", method = RequestMethod.GET)
	public ModelAndView adminLearnList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/stats/learnList");
		return mav;
	}
	
	@RequestMapping(value = "/admin/stats/quizList", method = RequestMethod.GET)
	public ModelAndView adminQuizList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/stats/quizList");
		return mav;
	}
	
}
