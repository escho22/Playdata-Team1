package com.example.SignLanEduService.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SignLanEduService.dao.WordMapper;
import com.example.SignLanEduService.vo.WordVO;

@Service("com.example.SignLanEduService.service.WordServiceImpl")
public class WordServiceImpl implements WordService {

	@Autowired
	private WordMapper mapper;
	
	@Override
	public String[] list_levels() {
		String[] levels = mapper.list_levels();
		return levels;
	}

	@Override
	public String[] get_words(int level) {
		String[] words = mapper.get_words(level);
		return words;
	}

	@Override
	public WordVO get_word(int w_num) {
		WordVO word = mapper.get_word(w_num);
		return word;
	}

}
