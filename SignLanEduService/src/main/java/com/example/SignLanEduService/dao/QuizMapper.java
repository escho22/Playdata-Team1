package com.example.SignLanEduService.dao;

import java.util.List;
import java.util.Map;

import com.example.SignLanEduService.vo.QuizVO;

public interface QuizMapper {
	
	int create(QuizVO vo);//quiz결과를 quiz테이블에 저장
	List<QuizVO> listquiz();
	QuizVO readQuiz(int q_num);
	List<QuizVO> readQuizbyMember(int m_num);
	List<QuizVO> readQuizbyWord(int w_num);
	List<QuizVO> readQuizbyDate(String q_date);
	List<QuizVO> readQuizbyDateBetween(Map map);
	//mapper에서 map은 아래의 형식으로 사용하시면 됩니다. 
	//map.put("date_start", date_start); map.put("date_end", date_end);
	int deleteQuiz(int q_num);
	
}
