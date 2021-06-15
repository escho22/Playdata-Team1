package com.example.SignLanEduService.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.SignLanEduService.service.MemberService;
import com.example.SignLanEduService.service.QuizService;
import com.example.SignLanEduService.service.WordService;
import com.example.SignLanEduService.vo.QuizVO;

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
	public ModelAndView selectQuiz() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/select");
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
	
	@RequestMapping(value = "/quiz/level4/quiz_4_1", method = RequestMethod.GET)
	public ModelAndView quizLevel4_1() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/level4/quiz_4_1");
		return mav;
	}
	
	@RequestMapping(value = "/quiz/level4/quiz_4_2", method = RequestMethod.GET)
	public ModelAndView quizLevel4_2() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/level4/quiz_4_2");
		return mav;
	}

	//quiz intro page로 이동 - 전체 levels 보여주기
	@RequestMapping(value = "/quiz/intro", method = RequestMethod.GET)
	public ModelAndView intro(HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		//로그인여부 확인
		if(!mservice.isMember(session)) {
		    mav.setViewName("redirect:/member/login_ck_form"); //login 페이지로 이동
		}
		else {
			String[] all_levels = wservice.list_levels();
			mav.addObject("all_levels", all_levels); //all_levels를 intro페이지에 출력필요
			mav.setViewName("/quiz/intro");
		}
		return mav;
	}
	
	//선택된 level의 quiz page로 이동 (views/quiz/main.jsp에서 js로 webcam구동+ajax방식으로 word하나씩 출력해야함)
//	@RequestMapping(value = "/quiz/start", method = RequestMethod.GET)
//	public ModelAndView start(int m_num, int level) {//sessionScope.m_num으로 m_num 전달받으면됨.
//		
//		ModelAndView mav = new ModelAndView();
//
//		MemberVO vo = mservice.read(m_num);
//		String[] words = wservice.get_words(level); //level에 해당하는 단어들 반환
//		
//		mav.addObject("level", level);
//		mav.addObject("words", words);
//		mav.addObject("member", vo);
//		mav.setViewName("/quiz/start");
//
//		return mav;
//	}
	
	@RequestMapping(value = "/quiz/start", method = RequestMethod.GET)
	public ModelAndView start() {//sessionScope.m_num으로 m_num 전달받으면됨.
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/start");
		return mav;
	}
	
	//quiz단어별 푼 결과 기록생성 - views/quiz/main.jsp로 어떻게 다시 돌아갈지???
	@ResponseBody
	@RequestMapping(value = "/quiz/start/{w_num}/result", method = RequestMethod.GET)
	public ResponseEntity<String> create(
			QuizVO vo, int m_num, int correct_cnt, @PathVariable("w_num") int w_num) {
		
		int point_per_word = 5; //단어별 점수지정
		int flag1 = service.create(vo);
		int flag2 = mservice.update_point(m_num, correct_cnt*point_per_word); //member service에 추가 필요
		
		return (flag1==1 && flag2==1)?new ResponseEntity<String>("success",HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	//quiz outro page로 이동 - 전체 결과 보여주기
	@RequestMapping(value = "/quiz/finish", method = RequestMethod.GET)
	public ModelAndView finish(int correct_cnt, int level) {//sessionScope.m_num으로 m_num 전달받으면됨.
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("level", level);
		mav.addObject("correct_cnt", correct_cnt);
		mav.setViewName("/quiz/finish");

		return mav;
	}
	
//	//quiz word 가져오려했으나, view/quiz/main.jsp에서 ajax방식을 사용하는것이 더 나을것 같아서 주석처리
//	@ResponseBody
//	@GetMapping("/quiz/start/{w_num}")
//	public ResponseEntity<WordVO> get_word(@PathVariable("w_num") int w_num){
//		WordVO word = wservice.get_word(w_num);
//		???
//		return flag==1?new ResponseEntity<String>("success",HttpStatus.OK)
//				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//		
//	}
	
		
}
