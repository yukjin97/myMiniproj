package com.mulcam.miniproj.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mulcam.miniproj.dto.writeform;
import com.mulcam.miniproj.service.WriteService;

@Controller
public class MovieController {
	
	
	@Autowired
	WriteService writeservice;
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext servletContext;

	
	@GetMapping(value="movie")
	public String moiveform(Model model) {
		String id = (String)session.getAttribute("id");
		try {
			if(!id.equals(null)) {
			List<writeform> articleList=writeservice.getWriteList();
			model.addAttribute("articleList", articleList);
			}			
		} catch (Exception e) {
			return "sign-in";
		}
		return "movie";
	}
	
	@GetMapping(value="detail")
	public String detailpage(HttpServletRequest request, Model model,@RequestParam(value="boardnum", required=false) int boardnum) {
		try {
			writeform wrt = writeservice.showdetail(boardnum);
			model.addAttribute("wrt" , wrt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "detail";
	}
 
	
	@GetMapping(value="writeform")
	public String writeform() {

		return "writeform";
	}
	
	@GetMapping(value="modify")
	public String modify(HttpServletRequest request, Model model,@RequestParam(value="boardnum", required=false) int boardnum) {
		try {
			writeform wrt = writeservice.showdetail(boardnum);
			model.addAttribute("wrt" , wrt);
			}catch (Exception e) {
				
			}
		return "modify";
	}
	@GetMapping(value="delete")
	public String delete(@RequestParam(value="boardnum", required=false) int boardnum) {
		try {
			writeservice.removeBoard(boardnum);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/movie";
	}
	@PostMapping(value="modify")
	public String modify(HttpServletRequest request, @ModelAttribute writeform writeform) {
		try {
			writeservice.modifyboard(writeform);
			return "redirect:/movie";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "detail";
	}

	@PostMapping(value="writeform")
	public String write(@ModelAttribute writeform writeform) {
		try {

		if(writeform.getFile().isEmpty()) {
			System.out.println("파일등록하시오");
		}else {
			String path = servletContext.getRealPath("/upload/");
			File destFile = new File(path+writeform.getFile().getOriginalFilename());
			writeform.setImage(writeform.getFile().getOriginalFilename());
			writeform.getFile().transferTo(destFile);
			writeservice.regBoard(writeform);
			return "redirect:/movie";
		}
		}catch(Exception e){
			System.out.println("catch");
			e.printStackTrace();
		}
		return "writeform";
	}
}

