package com.example.SignLanEduService.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SignLanEduService.dao.QuizMapper;
import com.example.SignLanEduService.vo.QuizVO;

@Service("com.example.SignLanEduService.service.QuizServiceImpl")
public class QuizServiceImpl implements QuizService {

	@Autowired
	private QuizMapper mapper;
	
	@Override
	public int create(QuizVO vo) {
		int saved = mapper.create(vo);
		return saved;
	}

}
