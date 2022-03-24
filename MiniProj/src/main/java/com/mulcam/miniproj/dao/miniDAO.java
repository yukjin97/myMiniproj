package com.mulcam.miniproj.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.miniproj.dto.minimem;

@Mapper
@Repository
public interface miniDAO {
	public minimem queryMember(String id) throws Exception;
	void insertMember(minimem member) throws Exception;
	public void memberInfoUpdate(Map<String, String> pwd) throws Exception;
}
