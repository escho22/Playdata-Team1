package com.example.SignLanEduService.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.SignLanEduService.service.LearnService;
import com.example.SignLanEduService.service.MemberService;
import com.example.SignLanEduService.service.WordService;
import com.example.SignLanEduService.vo.LearnVO;
import com.example.SignLanEduService.vo.MemberVO;
import com.example.SignLanEduService.vo.WordVO;

@Controller
public class LearnController {
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.MemberServiceImpl")
	private MemberService mservice;
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.LearnServiceImpl")
	private LearnService lservice;
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.WordServiceImpl")
	private WordService wservice;
	
	public LearnController() {
		System.out.println("---> LearnController created");
	}
	
	@RequestMapping(value = "/learn/select", method = RequestMethod.GET)
	public ModelAndView selectLearn() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/learn/select");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level1/choose", method = RequestMethod.GET)
	public ModelAndView learnLevel1() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/learn/level1/choose");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level2/choose", method = RequestMethod.GET)
	public ModelAndView learnLevel2() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/learn/level2/choose");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level3/choose", method = RequestMethod.GET)
	public ModelAndView learnLevel3() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/learn/level3/choose");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/choose", method = RequestMethod.GET)
	public ModelAndView learnLevel4() {
		ModelAndView mav = new ModelAndView();
		
		List<WordVO> list = this.wservice.readWordByDifficulty(4);
		
		mav.addObject("list",list);

		mav.setViewName("/learn/level4/choose");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_1", method = RequestMethod.GET)
	public ModelAndView learnLevel4_1() {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordVO = this.wservice.readWord(1);
		//System.out.println(wordVO.getW_num());
		
		mav.addObject("wordVO",wordVO);
		mav.setViewName("/learn/level4/learn_4_1");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_1", method = RequestMethod.POST)
	public ModelAndView learnLevel4_1(int w_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");

		LearnVO learnVO = new LearnVO();
		learnVO.setM_num(m_num);
		learnVO.setW_num(w_num);
		int cnt = lservice.createLearn(learnVO);
		
		WordVO wordVO = this.wservice.readWord(w_num);
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("m_num", m_num);
		map.put("point", wordVO.getW_difficulty());
	    mservice.update_point(map);
	    
	    mav.addObject("cnt", cnt);

	    mav.setViewName("redirect:/learn/level4/learn_4_1");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_2", method = RequestMethod.GET)
	public ModelAndView learnLevel4_2() {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordVO = this.wservice.readWord(2);
		//System.out.println(wordVO.getW_num());
		
		mav.addObject("wordVO",wordVO);
		mav.setViewName("/learn/level4/learn_4_2");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_2", method = RequestMethod.POST)
	public ModelAndView learnLevel4_2(int w_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");

		LearnVO learnVO = new LearnVO();
		learnVO.setM_num(m_num);
		learnVO.setW_num(w_num);
		int cnt = lservice.createLearn(learnVO);
		
		WordVO wordVO = this.wservice.readWord(w_num);
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("m_num", m_num);
		map.put("point", wordVO.getW_difficulty());
	    mservice.update_point(map);
	    
	    mav.addObject("cnt", cnt);

	    mav.setViewName("redirect:/learn/level4/learn_4_2");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_3", method = RequestMethod.GET)
	public ModelAndView learnLevel4_3() {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordVO = this.wservice.readWord(3);
		//System.out.println(wordVO.getW_num());
		
		mav.addObject("wordVO",wordVO);
		mav.setViewName("/learn/level4/learn_4_3");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_3", method = RequestMethod.POST)
	public ModelAndView learnLevel4_3(int w_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");

		LearnVO learnVO = new LearnVO();
		learnVO.setM_num(m_num);
		learnVO.setW_num(w_num);
		int cnt = lservice.createLearn(learnVO);
		
		WordVO wordVO = this.wservice.readWord(w_num);
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("m_num", m_num);
		map.put("point", wordVO.getW_difficulty());
	    mservice.update_point(map);
	    
	    mav.addObject("cnt", cnt);

	    mav.setViewName("redirect:/learn/level4/learn_4_3");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_4", method = RequestMethod.GET)
	public ModelAndView learnLevel4_4() {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordVO = this.wservice.readWord(4);
		//System.out.println(wordVO.getW_num());
		
		mav.addObject("wordVO",wordVO);
		mav.setViewName("/learn/level4/learn_4_4");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_4", method = RequestMethod.POST)
	public ModelAndView learnLevel4_4(int w_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");

		LearnVO learnVO = new LearnVO();
		learnVO.setM_num(m_num);
		learnVO.setW_num(w_num);
		int cnt = lservice.createLearn(learnVO);
		
		WordVO wordVO = this.wservice.readWord(w_num);
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("m_num", m_num);
		map.put("point", wordVO.getW_difficulty());
	    mservice.update_point(map);
	    
	    mav.addObject("cnt", cnt);

	    mav.setViewName("redirect:/learn/level4/learn_4_4");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_5", method = RequestMethod.GET)
	public ModelAndView learnLevel4_5() {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordVO = this.wservice.readWord(5);
		//System.out.println(wordVO.getW_num());
		
		mav.addObject("wordVO",wordVO);
		mav.setViewName("/learn/level4/learn_4_5");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_5", method = RequestMethod.POST)
	public ModelAndView learnLevel4_5(int w_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");

		LearnVO learnVO = new LearnVO();
		learnVO.setM_num(m_num);
		learnVO.setW_num(w_num);
		int cnt = lservice.createLearn(learnVO);
		
		WordVO wordVO = this.wservice.readWord(w_num);
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("m_num", m_num);
		map.put("point", wordVO.getW_difficulty());
	    mservice.update_point(map);
	    
	    mav.addObject("cnt", cnt);

	    mav.setViewName("redirect:/learn/level4/learn_4_5");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_6", method = RequestMethod.GET)
	public ModelAndView learnLevel4_6() {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordVO = this.wservice.readWord(6);
		//System.out.println(wordVO.getW_num());
		
		mav.addObject("wordVO",wordVO);
		mav.setViewName("/learn/level4/learn_4_6");
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_6", method = RequestMethod.POST)
	public ModelAndView learnLevel4_6(int w_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");

		LearnVO learnVO = new LearnVO();
		learnVO.setM_num(m_num);
		learnVO.setW_num(w_num);
		int cnt = lservice.createLearn(learnVO);
		
		WordVO wordVO = this.wservice.readWord(w_num);
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("m_num", m_num);
		map.put("point", wordVO.getW_difficulty());
	    mservice.update_point(map);
	    
	    mav.addObject("cnt", cnt);

	    mav.setViewName("redirect:/learn/level4/learn_4_6");
		
		return mav;
	}
	
	@RequestMapping(value = "/learn/level4/learn_4_fin", method = RequestMethod.GET)
	public ModelAndView learnFin(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");
		MemberVO memberVO = this.mservice.read(m_num);
		
		mav.addObject("memberVO", memberVO);
		
		mav.setViewName("/learn/level4/learn_4_fin");
		
		return mav;
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
