package Roobly;

import java.sql.Timestamp;

public class BlogDTO {

	private String url; // 블로그주소
	private String id; // 블로그주인 아이디
	private int tamp; // 블로그 템플릿번호
	private Timestamp date; // 블로그 개설일
	private String title; // 블로그타이틀
	
	
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTamp() {
		return tamp;
	}
	public void setTamp(int tamp) {
		this.tamp = tamp;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	

	
}