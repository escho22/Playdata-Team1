package com.example.SignLanEduService.controller;


import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.SignLanEduService.service.MemberService;
import com.example.SignLanEduService.service.QuizService;
import com.example.SignLanEduService.service.WordService;
import com.example.SignLanEduService.vo.QuizVO;
import com.example.SignLanEduService.vo.WordVO;


@CrossOrigin(origins = "http://localhost:8000") 
@Controller
public class QuizController {

	@Autowired
	@Qualifier("com.example.SignLanEduService.service.QuizServiceImpl")
	private QuizService service;
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.MemberServiceImpl")
	private MemberService mservice;

	@Autowired
	@Qualifier("com.example.SignLanEduService.service.WordServiceImpl")
	private WordService wservice;
	

	public QuizController() {
		System.out.println("--> QuizController created.");
	}
	
	
	@RequestMapping(value = "/quiz/select", method = RequestMethod.GET)
	public ModelAndView selectQuiz(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		// 로그인여부 확인
		if (!mservice.isMember(session)) {
			mav.setViewName("redirect:/member/login");
		} else {
			mav.setViewName("/quiz/select");
		}
		return mav;
	}
	
	@RequestMapping(value = "/quiz/level1/choose", method = RequestMethod.GET)
	public ModelAndView quizLevel1() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/level1/choose");

		return mav;
	}
	
	@RequestMapping(value = "/quiz/level2/choose", method = RequestMethod.GET)
	public ModelAndView quizLevel2() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/level2/choose");
		return mav;
	}
	
	@RequestMapping(value = "/quiz/level3/choose", method = RequestMethod.GET)
	public ModelAndView quizLevel3() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/level3/choose");
		return mav;
	}
	
	@RequestMapping(value = "/quiz/level4/choose", method = RequestMethod.GET)
	public ModelAndView quizLevel4() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/level4/choose");
		return mav;
	}
	
	@RequestMapping(value = "/quiz/level4/quiz_4_{w_num}", method = RequestMethod.GET)
	public ModelAndView quizLevel4_1(@PathVariable("w_num") int w_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		WordVO word = wservice.get_word(w_num); 
		mav.addObject("word", word.getW_word());
		mav.addObject("index", word.getW_index());
		mav.addObject("w_num",w_num);

		if (!mservice.isMember(session)) {
			mav.setViewName("redirect:/member/login");
		}
		else {
			mav.setViewName("/quiz/level4/quiz_4_"+w_num);
		}
		mav.setViewName("/quiz/level4/quiz_4_"+w_num);
		return mav;
	}
	
	@PostMapping("/quiz/level4/quiz_4_{w_num}")
	public ResponseEntity<String> create(@RequestBody QuizVO vo, 
			@PathVariable("w_num") int w_num, HttpSession session){
		int m_num = (int) session.getAttribute("usersno");
		double q_percent =0;
		int point_per_word = 0;
		
		int result = vo.getQ_correct();
		if(result==1) {
			point_per_word=5;
			q_percent = vo.getQ_percent();
		}
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("m_num", m_num);
		map.put("point", point_per_word);
		int flag2 = mservice.update_point(map);
		System.out.println("member number:"+m_num+" got updated");
		
		vo.setM_num(m_num);
		vo.setW_num(w_num);
		vo.setQ_correct(vo.getQ_correct());
		vo.setQ_percent(q_percent);
		int flag1 = service.create(vo);

		return (flag1==1 && flag2==1)?new ResponseEntity<String>("success",HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(value = "/quiz/finish", method = RequestMethod.GET)
	public ModelAndView finish() {//sessionScope.m_num으로 m_num 전달받으면됨.
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/finish");
		return mav;
	}
	
	
}
