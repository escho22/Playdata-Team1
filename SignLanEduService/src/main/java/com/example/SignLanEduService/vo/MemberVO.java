package com.example.SignLanEduService.vo;

import lombok.Data;

@Data
public class MemberVO {
	private int m_num; 
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_birth;
	private String m_sex;
	private String m_email;
	private String m_register;
	private String m_recent;  
	private int m_point;   
	private int m_is_admin;

}
