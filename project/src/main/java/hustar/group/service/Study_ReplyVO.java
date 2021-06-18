package hustar.group.service;

import java.util.List;

import egovframework.com.cmm.ComDefaultVO;

public class Study_ReplyVO extends ComDefaultVO{
	public int id;
	public int study_id;
	public String st_id; 
	public String regdate;
	public String name;
	public String content;
	
	public int getId() {
		return id;
	}
	
	public int getStudy_id() {
		return study_id;
	}
	
	public String getSt_id() {
		return st_id;
	}

	public void setSt_id(String st_id) {
		this.st_id = st_id;
	}

	public void setStudy_id(int study_id) {
		this.study_id = study_id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
