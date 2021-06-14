package com.example.SignLanEduService.dao;

import java.util.List;

import com.example.SignLanEduService.vo.LearnVO;

public interface LearnMapper {
	int createLearn(LearnVO learnvo);
	List<LearnVO> listLearn();
	LearnVO readLearn(int l_num);
	List<LearnVO> readLearnbyMember(int m_num);
	List<LearnVO> readLearnbyWord(int w_num);
	int deleteLearn(int l_num);

}
