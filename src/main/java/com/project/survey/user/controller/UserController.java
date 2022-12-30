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
	
}
