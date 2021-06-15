package com.example.SignLanEduService.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SignLanEduService.dao.LearnMapper;
import com.example.SignLanEduService.vo.LearnVO;

@Service("com.example.SignLanEduService.service.LearnServiceImpl")
public class LearnServiceImpl implements LearnService {

	@Autowired
	private LearnMapper lmapper;
	
	@Override
	public int createLearn(LearnVO vo) {
		// TODO Auto-generated method stub
		return lmapper.createLearn(vo);
	}

	@Override
	public List<LearnVO> listLearn() {
		// TODO Auto-generated method stub
		return lmapper.listLearn();
	}

	@Override
	public LearnVO readLearn(int l_num) {
		// TODO Auto-generated method stub
		return lmapper.readLearn(l_num);
	}

	@Override
	public List<LearnVO> readLearnbyMember(int m_num) {
		// TODO Auto-generated method stub
		return lmapper.readLearnbyMember(m_num);
	}

	@Override
	public List<LearnVO> readLearnbyWord(int w_num) {
		// TODO Auto-generated method stub
		return lmapper.readLearnbyWord(w_num);
	}

	@Override
	public int deleteLearn(int l_num) {
		// TODO Auto-generated method stub
		return lmapper.deleteLearn(l_num);
	}

}
