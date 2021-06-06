package com.example.quiz;

import lombok.Data;

@Data
public class QuizVO {
	private int q_num;
	private int m_num;
	private int w_num;
	private int q_correct;
	private int q_percent;
	private String q_date;

}
