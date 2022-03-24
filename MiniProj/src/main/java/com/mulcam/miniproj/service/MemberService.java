package com.mulcam.miniproj.service;

import java.util.Map;

import com.mulcam.miniproj.dto.minimem;

public interface MemberService {

	boolean login(String id, String password) throws Exception;
	void join(minimem minimem) throws Exception;
	minimem memberInfo(String id) throws Exception;
	boolean memberInfoUpdate(Map<String, String> pwd) throws Exception;
	boolean memoverlap(String id)throws Exception;
}
