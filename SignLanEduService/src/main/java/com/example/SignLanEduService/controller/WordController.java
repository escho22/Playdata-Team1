package com.example.SignLanEduService.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.SignLanEduService.service.WordService;
import com.example.SignLanEduService.vo.WordVO;

@Controller
public class WordController {
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.WordServiceImpl")
	private WordService wservice;
	
	public WordController() {
		System.out.println("---> WordController created");
	}
	
	@RequestMapping(value = "/word/create", method = RequestMethod.GET)
	public ModelAndView createWord() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/word/create");
		return mav;
	}
	
	@RequestMapping(value = "/word/create", method = RequestMethod.POST)
	public ModelAndView createWord(WordVO wordvo) {
		ModelAndView mav = new ModelAndView();
		int cnt = wservice.createWord(wordvo);
		mav.addObject("cnt", cnt);
		mav.addObject("url", "create_msg");

		mav.setViewName("redirect:/word/msg");
		return mav;
	}
	
	@RequestMapping(value = "/word/list", method = RequestMethod.GET)
	public ModelAndView listWord() {
		ModelAndView mav = new ModelAndView();
		
		List<WordVO> list = this.wservice.listWord();
		mav.addObject("list", list);
		mav.setViewName("/word/list");
		
		return mav;
	}
	
	@RequestMapping(value = "/word/read", method = RequestMethod.GET)
	public ModelAndView readWord(int w_num) {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordvo = this.wservice.readWord(w_num);
	    mav.addObject("wordvo", wordvo);
	    mav.setViewName("/word/read");
		
		return mav;
	}
	
	@RequestMapping(value = "/word/read_difficulty", method = RequestMethod.GET)
	public ModelAndView readWordByDifficulty(int w_difficulty) {
		ModelAndView mav = new ModelAndView();
		
		List<WordVO> list = this.wservice.readWordByDifficulty(w_difficulty);
	    mav.addObject("list", list);
	    mav.setViewName("/word/read_difficulty");
		
		return mav;
	} 
	
	@RequestMapping(value = "/word/update", method = RequestMethod.POST)
	public ModelAndView updateWord(WordVO wordvo) {
		ModelAndView mav = new ModelAndView();
		
		int cnt = wservice.updateWord(wordvo);
	    mav.addObject("cnt", cnt);
	    mav.addObject("usersno", wordvo.getW_num());
	    mav.addObject("url", "update_msg");
	    
	    mav.setViewName("redirect:/member/msg");
	    
		return mav;
	}
	
	@RequestMapping(value = "/word/delete", method = RequestMethod.GET)
	public ModelAndView deleteWord(int w_num) {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordvo = this.wservice.readWord(w_num);
		mav.addObject("wordvo", wordvo);
		mav.setViewName("/word/delete");
		
		return mav;
	}
	
	@RequestMapping(value = "/word/delete", method = RequestMethod.POST)
	public ModelAndView deleteWord_proc(int w_num) {
		ModelAndView mav = new ModelAndView();
		
		WordVO wordvo = this.wservice.readWord(w_num);
		int cnt = wservice.deleteWord(w_num);
		mav.addObject("cnt", cnt);
		mav.addObject("w_word", wordvo.getW_word());
		mav.addObject("url", "delete_msg");
		
		mav.setViewName("redirect:/word/msg");
		
		return mav;
	}
	
}
