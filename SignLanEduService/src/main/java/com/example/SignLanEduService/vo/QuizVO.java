package com.example.SignLanEduService.vo;

import lombok.Data;

@Data
public class QuizVO {
	private int q_num; //q_num -> level_num으로 변경? 1개의 level에 1개의 quiz있기때문.
	private int m_num;
	private int w_num;
	private int q_correct; //correct여부인가요? boolean 대신 int 사용한 이유?
	private int q_percent;
	private String q_date;

}
