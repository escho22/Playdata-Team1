package com.example.member;

import java.util.List;
import java.util.Map;

public interface MemberMapper {
	int create(MemberVO vo);
	MemberVO read(int usersno);
	int update(MemberVO vo);
	int delete(int usersno);
	List<MemberVO> list();
	int checkID(String id);
	MemberVO readById(String id);
	int passwd_check(Map map);
	int passwd_update(Map map);
	int login(Map map);

}
