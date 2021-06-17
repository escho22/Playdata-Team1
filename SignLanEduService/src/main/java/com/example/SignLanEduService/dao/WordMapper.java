package com.example.SignLanEduService.dao;

import java.util.List;

import com.example.SignLanEduService.vo.WordVO;

public interface WordMapper {
	int createWord(WordVO vo);
	List<WordVO> listWord();
	WordVO readWord(int w_num);
	WordVO readWordByWord(String w_word);
	List<WordVO> readWordByDifficulty(int w_difficulty);
	WordVO readWordByIndex(int w_index);
	int updateWord(WordVO vo);
	int deleteWord(int w_num);

	String[] list_levels(); 
	String[] get_words(int level); 
	WordVO get_word(int w_num); 
	
}
