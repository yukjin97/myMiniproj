package com.mulcam.miniproj.dto;

public class minimem {
	String id;
	String password;
	String name;
	String chkpwd;

	public minimem() {}
	public minimem(String id, String name, String password, String chkpwd) {
		this.id=id;
		this.name=name;
		this.password=password;
		this.chkpwd=chkpwd;
	}
	public String getChkpwd() {
		return chkpwd;
	}
	public void setChkpwd(String chkpwd) {
		this.chkpwd = chkpwd;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
