package com.project.survey.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.survey.user.dto.UserDTO;
import com.project.survey.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// 로그인 화면
	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String signIn() {
        return "user/signIn";
	}

	// 로그인 처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("user") UserDTO user, RedirectAttributes rAttr, HttpServletRequest request,
							  HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		// 로그인한 정보를 가지도 데이터베이스에 존재하는지 처리를 하고 그 결과를 가져온다.
		UserDTO userDTO = userService.login(user);

		// 로그인한 정보가 데이터베이스에 존재하는지에 따라 처리를 다르게 한다.
		if(userDTO != null) {   // 로그인 정보에 해당하는 자료가 있으면
			// 아이디와 비밀번호가 일치하면 세션을 발급한다.
			if(user.getPwd().equals(userDTO.getPwd())) {
				HttpSession session = request.getSession();
				session.setAttribute("user", userDTO);
				session.setAttribute("isLogOn", true);
				mav.setViewName("home");   // 메인화면으로 이동

			} else {         // 아이디는 맞는데 비밀번호가 틀린경우
				// 메시지를 가지고 로그인 화면으로 이동한다.
				rAttr.addAttribute("result", "PasswordFailed");
				mav.setViewName("redirect:/user/signIn");
			}

		} else {            // 로그인한 아이디가 존재하지 않으면
			// 로그인 실패 메시지를 가지고 로그인 화면으로 이동한다.
			rAttr.addAttribute("result", "loginFailed");
			mav.setViewName("redirect:/user/signIn");
		}

		return mav;
	}
	
	// 로그아웃 처리
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.removeAttribute("isLogon");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}
	
	// 내 정보 가기
	@RequestMapping(value="/myInfo", method=RequestMethod.GET)
	public ModelAndView myInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		UserDTO userDTO = (UserDTO) session.getAttribute("uesr");
		ModelAndView mav = new ModelAndView("user/myInfo");
		mav.addObject("user", userDTO);
		return mav;
	}
	
	// 회원가입 화면으로 이동
	@RequestMapping(value = "/registerAjax_page", method = RequestMethod.GET)
	public ModelAndView signUp(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/registerAjax_page");	// 회원가입화면으로 이동
		
		return mav;
	}

	// 회원가입 처리
	@RequestMapping(value = "/addMember", method=RequestMethod.POST)
	public ModelAndView addMember(UserDTO userDTO,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text.html;charset-UTF-8");
		
		int result = 0;
		// 사용자가 입력한 정보를 서비스에게 넘겨주어 처리하게 한다.
		//result = userService.addMember(userDTO);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName("/home");
		
		return mav;
	}
	
	
}
