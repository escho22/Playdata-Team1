package com.example.SignLanEduService.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.SignLanEduService.service.LearnService;
import com.example.SignLanEduService.service.MemberService;
import com.example.SignLanEduService.service.QuizService;
import com.example.SignLanEduService.vo.LearnVO;
import com.example.SignLanEduService.vo.MemberVO;
import com.example.SignLanEduService.vo.QuizVO;

@Controller
public class MemberController {

	@Autowired
	@Qualifier("com.example.SignLanEduService.service.MemberServiceImpl")
	private MemberService service;
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.LearnServiceImpl")
	private LearnService lservice;
	
	@Autowired
	@Qualifier("com.example.SignLanEduService.service.QuizServiceImpl")
	private QuizService qservice;

	public MemberController() {
		System.out.println("---> MemberController created");
	}

	@ResponseBody
	@RequestMapping(value = "/member/checkID", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String checkID(String id) {
		int cnt = this.service.checkID(id);

		JSONObject json = new JSONObject();
		json.put("cnt", cnt);

		return json.toString();
	}

	@RequestMapping(value = "/member/create", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/create");

		return mav;
	}

	@RequestMapping(value = "/member/create", method = RequestMethod.POST)
	public ModelAndView create(MemberVO memberVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = service.create(memberVO);
		mav.addObject("cnt", cnt);
		mav.addObject("url", "create_msg");

		mav.setViewName("redirect:/member/msg");

		return mav;
	}

	@RequestMapping(value = "/member/msg", method = RequestMethod.GET)
	public ModelAndView msg(String url) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/" + url); // forward

		return mav; // forward
	}

	@RequestMapping(value = "/member/list", method = RequestMethod.GET)
	public ModelAndView list(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		List<MemberVO> list = service.list();
		mav.addObject("list", list);

		mav.setViewName("/member/list");

		return mav;
	}
	
	@RequestMapping(value = "/member/myInfo", method = RequestMethod.GET)
	public ModelAndView read(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		int m_num = (int) session.getAttribute("usersno");
		
		MemberVO memberVO = this.service.read(m_num);
		mav.addObject("memberVO", memberVO);
		mav.setViewName("/member/myInfo");

		return mav; // forward
	}
	
	@RequestMapping(value = "/member/myLearnList", method = RequestMethod.GET)
	public ModelAndView readMyLearn(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");

		List<LearnVO> list = this.lservice.readLearnbyMember(m_num);
		mav.addObject("list", list);
		
		mav.setViewName("/member/myLearnList");

		return mav; // forward
	}
	
	@RequestMapping(value = "/member/myQuizList", method = RequestMethod.GET)
	public ModelAndView readMyQuiz(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		int m_num = (int) session.getAttribute("usersno");

		List<QuizVO> list = this.qservice.readQuizbyMember(m_num);
		mav.addObject("list", list);
		
		mav.setViewName("/member/myQuizList");

		return mav; // forward
	}

	@RequestMapping(value = "/member/update", method = RequestMethod.POST)
	public ModelAndView update(MemberVO memberVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = service.update(memberVO);
		mav.addObject("cnt", cnt);
		mav.addObject("usersno", memberVO.getM_num());
		mav.addObject("url", "update_msg");

		mav.setViewName("redirect:/member/msg");

		return mav;
	}

	@RequestMapping(value = "/member/delete", method = RequestMethod.GET)
	public ModelAndView delete(int m_num) {
		ModelAndView mav = new ModelAndView();

		MemberVO memberVO = this.service.read(m_num);
		mav.addObject("memberVO", memberVO);
		mav.setViewName("/member/delete");

		return mav;
	}

	@RequestMapping(value = "/member/delete", method = RequestMethod.POST)
	public ModelAndView delete_proc(int m_num) {
		ModelAndView mav = new ModelAndView();

		MemberVO memberVO = this.service.read(m_num);

		int cnt = service.delete(m_num);
		mav.addObject("cnt", cnt);
		mav.addObject("name", memberVO.getM_name());
		mav.addObject("url", "delete_msg");

		mav.setViewName("redirect:/member/msg");

		return mav;
	}

	@RequestMapping(value = "/member/passwd_update", method = RequestMethod.GET)
	public ModelAndView passwd_update(int m_num) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/passwd_update");

		return mav;
	}

	@RequestMapping(value = "/member/passwd_update", method = RequestMethod.POST)
	public ModelAndView passwd_update(int m_num, String current_passwd, String new_passwd) {
		ModelAndView mav = new ModelAndView();

		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("m_num", m_num);
		map.put("m_pw", current_passwd);

		int cnt = service.passwd_check(map);
		int update_cnt = 0;

		if (cnt == 1) {
			map.put("m_pw", new_passwd);
			update_cnt = service.passwd_update(map);
			mav.addObject("update_cnt", update_cnt);
		}

		mav.addObject("cnt", cnt);
		mav.addObject("url", "passwd_update_msg");

		mav.setViewName("redirect:/member/msg");

		return mav;
	}

	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public ModelAndView login_cookie(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;

		String ck_id = ""; // id
		String ck_id_save = "";
		String ck_passwd = "";
		String ck_passwd_save = "";

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookie = cookies[i];

				if (cookie.getName().equals("ck_id")) {
					ck_id = cookie.getValue();
				} else if (cookie.getName().equals("ck_id_save")) {
					ck_id_save = cookie.getValue(); // Y, N
				} else if (cookie.getName().equals("ck_passwd")) {
					ck_passwd = cookie.getValue(); // 1234
				} else if (cookie.getName().equals("ck_passwd_save")) {
					ck_passwd_save = cookie.getValue(); // Y, N
				}
			}
		}

		mav.addObject("ck_id", ck_id);
		mav.addObject("ck_id_save", ck_id_save);
		mav.addObject("ck_passwd", ck_passwd);
		mav.addObject("ck_passwd_save", ck_passwd_save);

		mav.setViewName("/member/login_ck_form");
		return mav;
	}

	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public ModelAndView login_cookie_proc(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			String m_id, String m_pw, @RequestParam(value = "id_save", defaultValue = "") String id_save,
			@RequestParam(value = "passwd_save", defaultValue = "") String passwd_save) {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", m_id);
		map.put("m_pw", m_pw);

		int count = service.login(map);
		if (count == 1) {
			MemberVO memberVO = service.readById(m_id);
			session.setAttribute("usersno", memberVO.getM_num());
			session.setAttribute("m_id", m_id);
			session.setAttribute("m_name", memberVO.getM_name());

			if (id_save.equals("Y")) {
				Cookie ck_id = new Cookie("ck_id", m_id);
				ck_id.setMaxAge(60 * 60 * 72 * 10); // 30 day
				response.addCookie(ck_id);
			} else {
				Cookie ck_id = new Cookie("ck_id", "");
				ck_id.setMaxAge(0);
				response.addCookie(ck_id);
			}

			Cookie ck_id_save = new Cookie("ck_id_save", id_save);
			ck_id_save.setMaxAge(60 * 60 * 72 * 10); // 30 day
			response.addCookie(ck_id_save);
			// -------------------------------------------------------------------
			// Password
			// -------------------------------------------------------------------
			if (passwd_save.equals("Y")) {
				Cookie ck_passwd = new Cookie("ck_passwd", m_pw);
				ck_passwd.setMaxAge(60 * 60 * 72 * 10); // 30 day
				response.addCookie(ck_passwd);
			} else { // N
				Cookie ck_passwd = new Cookie("ck_passwd", "");
				ck_passwd.setMaxAge(0);
				response.addCookie(ck_passwd);
			}

			Cookie ck_passwd_save = new Cookie("ck_passwd_save", passwd_save);
			ck_passwd_save.setMaxAge(60 * 60 * 72 * 10); // 30 day
			response.addCookie(ck_passwd_save);
			// -------------------------------------------------------------------

			mav.setViewName("redirect:/");
		} else {
			mav.addObject("url", "login_fail_msg");
			mav.setViewName("redirect:/member/msg");
		}

		return mav;
	}

	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate(); //

		mav.addObject("url", "logout_msg");
		mav.setViewName("redirect:/member/msg");

		return mav;
	}

	@RequestMapping(value = "/member/session", method = RequestMethod.GET)
	public ModelAndView session(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		mav.addObject("url", "session");
		mav.setViewName("redirect:/member/msg");

		return mav;
	}

}
