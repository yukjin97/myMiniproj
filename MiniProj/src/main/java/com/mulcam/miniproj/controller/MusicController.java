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
public class MusicController {

	
	
	@Autowired
	WriteService writeservice;
	@Autowired
	HttpSession session;
	
	@Autowired
	ServletContext servletContext;
	
	
	@GetMapping(value="music")
	public String moiveform(Model model) {
		String id = (String)session.getAttribute("id");
		try {
			if(!id.equals(null)) {
			List<writeform> muswrt=writeservice.musicgetWriteList();
			model.addAttribute("muswrt", muswrt);
			}			
		} catch (Exception e) {
			return "sign-in";
		}
		return "music";
	}
	
	@GetMapping(value="musicdetail")
	public String detailpage(HttpServletRequest request, Model model,@RequestParam(value="boardnum", required=false) int boardnum) {
		try {
			writeform muswrt = writeservice.musicshowdetail(boardnum);
			model.addAttribute("muswrt" , muswrt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "musicdetail";
	}
 
	
	@GetMapping(value="musicwriteform")
	public String writeform() {

		return "musicwriteform";
	}
	
	@GetMapping(value="musicmodify")
	public String modify(HttpServletRequest request, Model model,@RequestParam(value="boardnum", required=false) int boardnum) {
		try {
			writeform muswrt = writeservice.musicshowdetail(boardnum);
			model.addAttribute("muswrt" , muswrt);
			}catch (Exception e) {
				
			}
		return "musicmodify";
	}
	@GetMapping(value="musicdelete")
	public String delete(@RequestParam(value="boardnum", required=false) int boardnum) {
		try {
			writeservice.musicremoveBoard(boardnum);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/music";
	}
	@PostMapping(value="musicmodify")
	public String modify(HttpServletRequest request, @ModelAttribute writeform writeform) {
		try {
			writeservice.musicmodifyboard(writeform);
			return "redirect:/music";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "musicdetail";
	}

	@PostMapping(value="musicwriteform")
	public String write(@ModelAttribute writeform writeform) {
		try {

		if(writeform.getFile().isEmpty()) {
			System.out.println("파일등록하시오");
		}else {
			String path = servletContext.getRealPath("/upload/");
			File destFile = new File(path+writeform.getFile().getOriginalFilename());
			writeform.setImage(writeform.getFile().getOriginalFilename());
			writeform.getFile().transferTo(destFile);
			writeservice.musicregBoard(writeform);
			return "redirect:/music";
		}
		}catch(Exception e){
			System.out.println("catch");
			e.printStackTrace();
		}
		return "musicwriteform";
	}
	
}


