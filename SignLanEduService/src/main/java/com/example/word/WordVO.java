package com.example.word;

import lombok.Data;

@Data
public class WordVO {
	private int w_num;
	private String w_word;
	private String w_explain;
	private String w_path;
	private int w_difficulty;
}
