package com.mulcam.miniproj.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.miniproj.dao.miniDAO;
import com.mulcam.miniproj.dto.minimem;

@Service
public class MemberServiceImpl implements MemberService {
@Autowired
miniDAO minidao;
@Autowired
HttpSession session;
	@Override
	public boolean login(String id, String password) throws Exception {
		minimem member = minidao.queryMember(id);
		if(!member.getId().equals(null)){
			try {
				if(member.getPassword().equals(password)){
					return true;
				}
			}catch(Exception e) {
				return false;			
			}	
		}
		throw  new Exception("로그인 실패");
	}
	
	@Override
	public void join(minimem minimem) throws Exception {
		minidao.insertMember(minimem);		
	}


	@Override
	public minimem memberInfo(String id) throws Exception {
		minimem mem = minidao.queryMember(id);
		if(mem==null) throw new Exception("오류");
		return mem;
	}

	@Override
	public boolean memberInfoUpdate(Map<String, String> pwd) throws Exception {
		minidao.memberInfoUpdate(pwd);
		return false;
	}

	@Override
	public boolean memoverlap(String id) throws Exception {
		try {
			minidao.queryMember(id);
		}catch(Exception e) {
			return false;
		}
		return true;
	}

}

