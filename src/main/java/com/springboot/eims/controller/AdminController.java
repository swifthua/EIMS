package com.springboot.eims.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.eims.constant.AdminConstant;
import com.springboot.eims.entity.Admin;
import com.springboot.eims.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;

	@GetMapping("/")
	public void gologin(HttpServletRequest servletRequest, HttpServletResponse servletResponse) {
		try {
			servletResponse.sendRedirect(servletRequest.getContextPath() + "/login.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@PostMapping("login")
	public String dologin(Model model, @RequestParam(required = true) String username,
			@RequestParam(required = true) String password, HttpServletRequest request) {
		if (username == null || username.equals("") || password == null || password.equals("")) {
			model.addAttribute("erroInfo", AdminConstant.USER_NOT_EXIT.getErrInfo());
			return "login";
		}
		Admin admin = adminService.selectByNameAndPwd(username);
		if (admin == null) {
			model.addAttribute("erroInfo", AdminConstant.USER_NAME_ERROR.getErrInfo());
			return "login";
		} else {
			if (!password.equals(admin.getPassword())) {

				model.addAttribute("erroInfo", AdminConstant.USER_PWD_ERROR.getErrInfo());
				return "login";
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("user", admin);
				return "redirect:main";
			}
		}

	}

	@GetMapping("/loginOut")
	public String loginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		return "redirect:/";
	}

	@GetMapping("/main")
	public String goMain(HttpServletRequest request) {
		return "main";
	}
    

}
