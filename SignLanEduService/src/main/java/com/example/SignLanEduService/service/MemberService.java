package com.example.SignLanEduService.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.example.SignLanEduService.vo.MemberVO;

public interface MemberService {
	int create(MemberVO vo);
	MemberVO read(int m_num);
	int update(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int delete(int m_num);
	List<MemberVO> list();
	int checkID(String m_id);
	MemberVO readById(String m_id);
	int passwd_check(Map map);
	int passwd_update(Map map);
	int recent_update(int m_num);
	int login(Map<String,Object> map);
	boolean isMember(HttpSession session);  
	
	int update_point(Map map);//quiz풀고 point update

}
