package com.example.SignLanEduService.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SignLanEduService.dao.QuizMapper;
import com.example.SignLanEduService.vo.QuizVO;

@Service("com.example.SignLanEduService.service.QuizServiceImpl")
public class QuizServiceImpl implements QuizService {

	@Autowired
	private QuizMapper qmapper;
	
	@Override
	public int create(QuizVO quizvo) {
		// TODO Auto-generated method stub
		return qmapper.create(quizvo);
	}

	@Override
	public List<QuizVO> listquiz() {
		// TODO Auto-generated method stub
		return qmapper.listquiz();
	}

	@Override
	public QuizVO readQuiz(int q_num) {
		// TODO Auto-generated method stub
		return qmapper.readQuiz(q_num);
	}

	@Override
	public List<QuizVO> readQuizbyMember(int m_num) {
		// TODO Auto-generated method stub
		return qmapper.readQuizbyMember(m_num);
	}

	@Override
	public List<QuizVO> readQuizbyWord(int w_num) {
		// TODO Auto-generated method stub
		return qmapper.readQuizbyWord(w_num);
	}

	@Override
	public List<QuizVO> readQuizbyDate(String q_date) {
		// TODO Auto-generated method stub
		return qmapper.readQuizbyDate(q_date);
	}

	@Override
	public List<QuizVO> readQuizbyDateBetween(Map map) {
		// TODO Auto-generated method stub
		return qmapper.readQuizbyDateBetween(map);
	}

	@Override
	public int deleteQuiz(int q_num) {
		// TODO Auto-generated method stub
		return qmapper.deleteQuiz(q_num);
	}

}
