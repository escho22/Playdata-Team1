package com.example.SignLanEduService.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SignLanEduService.dao.MemberMapper;
import com.example.SignLanEduService.vo.MemberVO;

@Service("com.example.SignLanEduService.service.MemberServiceImpl")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;

	@Override
	public int create(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.create(vo);
	}

	@Override
	public MemberVO read(int m_num) {
		// TODO Auto-generated method stub
		return mapper.read(m_num);
	}

	@Override
	public int update(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo);
	}
	
	@Override
	public int memberUpdate(MemberVO vo) {
		// TODO Auto-generated method stub
		return mapper.memberUpdate(vo);
	}

	@Override
	public int delete(int m_num) {
		// TODO Auto-generated method stub
		return mapper.delete(m_num);
	}

	@Override
	public List<MemberVO> list() {
		// TODO Auto-generated method stub
		return mapper.list();
	}

	@Override
	public int checkID(String m_id) {
		// TODO Auto-generated method stub
		return mapper.checkID(m_id);
	}

	@Override
	public MemberVO readById(String m_id) {
		// TODO Auto-generated method stub
		return mapper.readById(m_id);
	}

	@Override
	public int passwd_check(Map map) {
		// TODO Auto-generated method stub
		return mapper.passwd_check(map);
	}

	@Override
	public int passwd_update(Map map) {
		// TODO Auto-generated method stub
		return mapper.passwd_update(map);
	}
	
	@Override
	public int recent_update(int m_num) {
		// TODO Auto-generated method stub
		return mapper.recent_update(m_num);
	}

	@Override
	public int login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return mapper.login(map);
	}

	@Override
	public boolean isMember(HttpSession session) {
		// TODO Auto-generated method stub
		boolean sw = false;
		String m_id = (String)session.getAttribute("m_id");
		if(m_id != null) sw = true;
		
		return sw;
	}

	//quiz 풀고 member의 point update
	@Override
	public int update_point(Map map) {
		// TODO Auto-generated method stub
		return mapper.update_point(map);

	}

	

}
