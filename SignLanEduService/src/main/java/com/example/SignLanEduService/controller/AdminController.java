package com.example.SignLanEduService.controller;

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
	public ModelAndView admin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/select");
		return mav;
	}
	
	@RequestMapping(value = "/admin/select", method = RequestMethod.GET)
	public ModelAndView adminSelect() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/select");
		return mav;
	}
	
	@RequestMapping(value = "/admin/control/choose", method = RequestMethod.GET)
	public ModelAndView adminControl() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/control/choose");
		return mav;
	}
	
	@RequestMapping(value = "/admin/stats/choose", method = RequestMethod.GET)
	public ModelAndView adminStats() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/stats/choose");
		return mav;
	}
	
}
