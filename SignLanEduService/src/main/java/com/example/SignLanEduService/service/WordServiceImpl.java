package com.example.SignLanEduService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SignLanEduService.dao.WordMapper;
import com.example.SignLanEduService.vo.WordVO;

@Service("com.example.SignLanEduService.service.WordServiceImpl")
public class WordServiceImpl implements WordService {

	@Autowired
	private WordMapper wmapper;
	
	@Override
	public int createWord(WordVO wordvo) {
		// TODO Auto-generated method stub
		return wmapper.createWord(wordvo);
	}

	@Override
	public List<WordVO> listWord() {
		// TODO Auto-generated method stub
		return wmapper.listWord();
	}

	@Override
	public WordVO readWord(int w_num) {
		// TODO Auto-generated method stub
		return wmapper.readWord(w_num);
	}

	@Override
	public WordVO readWordByWord(String w_word) {
		// TODO Auto-generated method stub
		return wmapper.readWordByWord(w_word);
	}

	@Override
	public List<WordVO> readWordByDifficulty(int w_difficulty) {
		// TODO Auto-generated method stub
		return wmapper.readWordByDifficulty(w_difficulty);
	}

	@Override
	public WordVO readWordByIndex(int w_index) {
		// TODO Auto-generated method stub
		return wmapper.readWordByIndex(w_index);
	}

	@Override
	public int updateWord(WordVO wordvo) {
		// TODO Auto-generated method stub
		return wmapper.updateWord(wordvo);
	}

	@Override
	public int deleteWord(int w_num) {
		// TODO Auto-generated method stub
		return wmapper.deleteWord(w_num);
	}

	@Override
	public String[] list_levels() {
		String[] levels = wmapper.list_levels();
		return levels;
	}

	@Override
	public String[] get_words(int level) {
		String[] words = wmapper.get_words(level);
		return words;
	}

	@Override
	public WordVO get_word(int w_num) {
		WordVO word = wmapper.get_word(w_num);
		return word;
	}

}
