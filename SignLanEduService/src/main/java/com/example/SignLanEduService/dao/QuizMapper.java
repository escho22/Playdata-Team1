package com.example.SignLanEduService.dao;

import com.example.SignLanEduService.vo.QuizVO;

public interface QuizMapper {
	
	int create(QuizVO vo);//quiz결과를 quiz테이블에 저장
	
}
