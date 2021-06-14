package com.example.SignLanEduService.service;

import java.util.List;

import com.example.SignLanEduService.vo.LearnVO;

public interface LearnService {
	int createLearn(LearnVO learnvo);
	List<LearnVO> listLearn();
	LearnVO readLearn(int l_num);
	List<LearnVO> readLearnbyMember(int m_num);
	List<LearnVO> readLearnbyWord(int w_num);
	int deleteLearn(int l_num);
}
