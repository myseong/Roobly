package Roobly;

import java.sql.Timestamp;

public class BlogDTO {

	private String url; // ��α��ּ�
	private String id; // ��α����� ���̵�
	private int tamp; // ��α� ���ø���ȣ
	private Timestamp date; // ��α� ������
	private String title; // ��α�Ÿ��Ʋ
	
	
	
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