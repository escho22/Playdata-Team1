package com.example.SignLanEduService.service;

import java.util.List;
import java.util.Map;

import com.example.SignLanEduService.vo.QuizVO;

public interface QuizService {
	
	int create(QuizVO vo); //quiz결과를 quiz테이블에 저장
	List<QuizVO> listquiz();
	QuizVO readQuiz(int q_num);
	List<QuizVO> readQuizbyMember(int m_num);
	List<QuizVO> readQuizbyWord(int w_num);
	List<QuizVO> readQuizbyDate(String q_date);
	List<QuizVO> readQuizbyDateBetween(Map map);
	int deleteQuiz(int q_num);
}
