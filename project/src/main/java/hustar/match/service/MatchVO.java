package hustar.match.service;
import egovframework.com.cmm.ComDefaultVO;

public class MatchVO extends ComDefaultVO{
	
	public String st_id;  //학번
	public String kakao_id; //카카오ID
	public String height; //키 
	public String body_shape; //체형
	public String division; 
	public String purpose;
	public String filename;
	public String oriFilename;
	public String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSt_id() {
		return st_id;
	}
	public void setSt_id(String st_id) {
		this.st_id = st_id;
	}
	public String getKakao_id() {
		return kakao_id;
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
	public void setKakao_id(String kakao_id) {
		this.kakao_id = kakao_id;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getBody_shape() {
		return body_shape;
	}
	public void setBody_shape(String body_shape) {
		this.body_shape = body_shape;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	

}
