package com.spring.boardex.impl;
import java.sql.Timestamp;

public class projectDo {
	private int seq;
	private String title;
	private String group;
	private String writer;
	private String content;
	private Timestamp regdate;
	
	@Override
	public String toString() {
		return "projectDo [seq=" + seq + 
				", title=" + title + 
				", part=" + group + 
				", writer=" + writer + 
				", content=" + content +
				", regdate=" + regdate +"]";
	}
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = group;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}	

}
