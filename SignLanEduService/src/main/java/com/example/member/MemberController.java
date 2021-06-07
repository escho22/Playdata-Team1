package com.example.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

@Controller
public class MemberController {
	
	@Autowired
	@Qualifier("com.example.member.MemberServiceImpl")
	private MemberService service;
	
	public MemberController() {
		System.out.println("---> MemberController created");
	}
	
}
