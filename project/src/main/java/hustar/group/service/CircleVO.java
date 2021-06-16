package hustar.group.service;

import egovframework.com.cmm.ComDefaultVO;

public class CircleVO extends ComDefaultVO{
	public int seq;
	public int hit;
	public String university;
	public String subject;
	public String writer;
	public String date;
	public String contents;
	public String filename;
	public String oriFilename;
	
	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
	//alt + shift + s -> getter setter 생성하기위함
	
	public int getSeq() {
		return seq;
	}
	
	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getWriter() {
		return writer;
	}
	
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getContents() {
		return contents;
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getOriFilename() {
		return oriFilename;
	}

	public void setOriFilename(String oriFilename) {
		this.oriFilename = oriFilename;
	}	
}
