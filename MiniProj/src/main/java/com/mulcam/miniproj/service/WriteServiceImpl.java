package com.mulcam.miniproj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.miniproj.dao.movieDAO;
import com.mulcam.miniproj.dto.writeform;

@Service
public class WriteServiceImpl implements WriteService {
	
	@Autowired
	movieDAO moviedao;


	@Override
	public void regBoard(writeform writeform) throws Exception {
		Integer boardnum = moviedao.selectMaxBoardnum();
		System.out.println(boardnum);
		if(boardnum == null) { boardnum = 1;}
		else {boardnum += 1;}
		writeform.setBoardnum(boardnum);
		moviedao.insertboard(writeform);
	}


	@Override
	public List<writeform> getWriteList() throws Exception {
		List<writeform> articleList = moviedao.selectBoard();
		return articleList;
	}


	@Override
	public writeform showdetail(int boardnum) throws Exception {
		writeform wrt = moviedao.showdetail(boardnum);
		return wrt;
	}


	@Override
	public void modifyboard(writeform writeform) throws Exception {
		moviedao.updateboard(writeform);
		
	}


	@Override
	public void removeBoard(int boardnum) throws Exception {
		moviedao.deleteBoard(boardnum);
		
	}


	@Override
	public void musicregBoard(writeform writeform) throws Exception {
		Integer boardnum = moviedao.musicselectMaxBoardnum();
		if(boardnum == null) { boardnum = 1;}
		else {boardnum += 1;}
		writeform.setBoardnum(boardnum);
		moviedao.musicinsertboard(writeform);
		
	}


	@Override
	public List<writeform> musicgetWriteList() throws Exception {
		List<writeform> articleList = moviedao.musicselectBoard();
		return articleList;
	}


	@Override
	public writeform musicshowdetail(int boardnum) throws Exception {
		writeform wrt = moviedao.musicshowdetail(boardnum);
		return wrt;
	}


	@Override
	public void musicmodifyboard(writeform writeform) throws Exception {
		moviedao.musicupdateboard(writeform);
		
	}


	@Override
	public void musicremoveBoard(int boardnum) throws Exception {
		moviedao.musicdeleteBoard(boardnum);
		
	}


}
