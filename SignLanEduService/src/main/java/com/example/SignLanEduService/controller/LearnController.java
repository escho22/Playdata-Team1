package com.example.SignLanEduService.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.SignLanEduService.service.LearnService;
import com.example.SignLanEduService.vo.LearnVO;

@Controller
public class LearnController {
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.LearnServiceImpl")
	private LearnService lservice;
	
	public LearnController() {
		System.out.println("---> LearnController created");
	}
	
	@RequestMapping(value = "/learn/create", method = RequestMethod.GET)
	public ModelAndView createLearn() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/learn/create");
		return mav;
	}

	@RequestMapping(value = "/learn/create", method = RequestMethod.POST)
	public ModelAndView createLearn(LearnVO learnvo) {
		ModelAndView mav = new ModelAndView();
		int cnt = lservice.createLearn(learnvo);
		mav.addObject("cnt", cnt);
		mav.addObject("url", "create_msg");

		mav.setViewName("redirect:/learn/msg");
		return mav;
	}
	
	@RequestMapping(value = "/learn/list", method = RequestMethod.GET)
	public ModelAndView listLearn() {
		ModelAndView mav = new ModelAndView();
		
		List<LearnVO> list = this.lservice.listLearn();
		mav.addObject("list", list);
		mav.setViewName("/learn/list");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/read", method = RequestMethod.GET)
	public ModelAndView readLearn(int l_num) {
		ModelAndView mav = new ModelAndView();
		
		LearnVO learnVO = this.lservice.readLearn(l_num);
		mav.addObject("learnVO", learnVO);
		mav.setViewName("/learn/read");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/readMember", method = RequestMethod.GET)
	public ModelAndView readLearnbyMember(int m_num) {
		ModelAndView mav = new ModelAndView();
		
		List<LearnVO> list = this.lservice.readLearnbyMember(m_num);
		mav.addObject("list", list);
		mav.setViewName("/learn/readMember");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/readWord", method = RequestMethod.GET)
	public ModelAndView readLearnbyWord(int w_num) {
		ModelAndView mav = new ModelAndView();
		
		List<LearnVO> list = this.lservice.readLearnbyWord(w_num);
		mav.addObject("list", list);
		mav.setViewName("/learn/readWord");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/delete", method = RequestMethod.POST)
	public ModelAndView deleteLearn(int l_num) {
		ModelAndView mav = new ModelAndView();
		
		LearnVO learnvo = this.lservice.readLearn(l_num);
		int cnt = lservice.deleteLearn(l_num);
		mav.addObject("cnt", cnt);
		mav.addObject("l_num", learnvo.getL_num());
		mav.addObject("url", "delete_msg");
		
		mav.setViewName("redirect:/learn/msg");
		
		return mav;
	}

}
