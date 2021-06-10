package com.example.quiz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.member.MemberMapper;

@Service("com.example.quiz.QuizServiceImpl")
public class QuizServiceImpl implements QuizService {

	@Autowired
	private QuizMapper mapper;
	
	@Override
	public int create(QuizVO vo) {
		int saved = mapper.create(vo);
		return saved;
	}

}
