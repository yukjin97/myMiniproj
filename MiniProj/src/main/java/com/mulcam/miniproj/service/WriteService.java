package com.mulcam.miniproj.service;

import java.util.List;

import com.mulcam.miniproj.dto.writeform;

public interface WriteService {


	public writeform showdetail(int boardnum) throws Exception;
	
	void regBoard(writeform writeform) throws Exception;
	void musicregBoard(writeform writeform) throws Exception;

	List<writeform> getWriteList() throws Exception;

	public void modifyboard(writeform writeform) throws Exception;

	public void removeBoard(int boardnum)throws Exception;

	public List<writeform> musicgetWriteList() throws Exception;

	public writeform musicshowdetail(int boardnum)throws Exception;

	public void musicmodifyboard(writeform writeform) throws Exception;

	public void musicremoveBoard(int boardnum)throws Exception;

}
