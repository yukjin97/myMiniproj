package com.mulcam.miniproj.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mulcam.miniproj.dto.minimem;
import com.mulcam.miniproj.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	HttpSession session;
	@Autowired
	MemberService memberservice;
	
	@GetMapping(value = "info")
	public String infopage(Model model, HttpServletRequest request) {
		String id = (String)session.getAttribute("id");
		try {
			minimem mem = memberservice.memberInfo(id);
			model.addAttribute("mem",mem);	
			}
		catch(Exception e) {
			return "sign-in";
		}
		return "info";
		
	}
	

	
	@GetMapping(value = "sign-in")
	public String signinpage() {		
		return "sign-in";
	}
	@GetMapping(value = "sign-up")
	public String signuppage() {		
		return "sign-up";
	}

	
	
	@PostMapping(value = "info")
	public String info(HttpServletRequest request,@RequestParam Map<String, String> pwd) {
			try {
				memberservice.memberInfoUpdate(pwd);
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "redirect:/info";
	}
	
	
	

	
	
	@PostMapping(value = "sign-in")
	public String login(@RequestParam Map<String, String> info,HttpServletRequest request) {
		String id = info.get("id");
		String password = info.get("password");
			try {
				memberservice.login(id, password);
				session.setAttribute("id", id);
				return "index";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "sign-in";
	}
	
	@PostMapping(value = "sign-up")
	public String join(@ModelAttribute minimem minimem,HttpServletRequest request) {	
			try {
				memberservice.join(minimem);
				return "sign-in";
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "sign-up";
	}
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		session.removeAttribute("id");
		return "index";
		
	}
	

	@ResponseBody
	@PostMapping(value="memoverlap")
	public String memoverlap(@RequestParam(value="id", required=true)String id) {
		boolean overlap = false;
		try {
			overlap = memberservice.memoverlap(id);
		}catch(Exception e) {
	
		}
		return String.valueOf(overlap);
	}
	
}
