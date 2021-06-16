package hustar.group.service;

import java.util.List;

import egovframework.com.cmm.ComDefaultVO;

public class Circle_ReplyVO extends ComDefaultVO{
	public int id;
	public int circle_id;
	public String regdate;
	public String name;
	public String content;
	
	public int getId() {
		return id;
	}
	
	public int getCircle_id() {
		return circle_id;
	}

	public void setCircle_id(int circle_id) {
		this.circle_id = circle_id;
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
