package com.example.SignLanEduService.dao;

import com.example.SignLanEduService.vo.WordVO;

public interface WordMapper {
	
	String[] list_levels(); //word테이블에서 w_difficulty unique가져오기
	String[] get_words(int level); //quiz시작시, 선택된 difficulty level의 words 리스트 가져오기
	WordVO get_word(int w_num); //word 테이블에서 quiz word 하나씩 가져오기
	
}
