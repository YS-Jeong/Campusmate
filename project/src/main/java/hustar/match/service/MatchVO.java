package hustar.match.service;
import egovframework.com.cmm.ComDefaultVO;

public class MatchVO extends ComDefaultVO{
	
	public int st_id;  //학번
	public String kakao_id; //카카오ID
	public int height; //키 
	public String body_shape; //체형
	public String division; //행정구역
	
	public int getSt_id() {
		return st_id;
	}
	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}
	public String getKakao_id() {
		return kakao_id;
	}
	public void setKakao_id(String kakao_id) {
		this.kakao_id = kakao_id;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
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
	
	
	
	
	

}
