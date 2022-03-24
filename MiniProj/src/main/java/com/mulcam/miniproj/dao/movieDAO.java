package com.mulcam.miniproj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.miniproj.dto.writeform;


@Mapper
@Repository
public interface movieDAO {

	Integer selectMaxBoardnum()throws Exception;

	void insertboard(writeform writeform)throws Exception;

	List<writeform> selectBoard() throws Exception;

	writeform showdetail(int boardnum) throws Exception;

	void updateboard(writeform writeform) throws Exception;

	void deleteBoard(int boardnum)throws Exception;

	
	
	Integer musicselectMaxBoardnum()throws Exception;

	void musicinsertboard(writeform writeform)throws Exception;

	List<writeform> musicselectBoard()throws Exception;

	writeform musicshowdetail(int boardnum) throws Exception;

	void musicupdateboard(writeform writeform) throws Exception;

	void musicdeleteBoard(int boardnum)throws Exception;

}
