package com.doom.s1.board;

import java.sql.Date;

public class BoardVO {

	private long no_num;
	private String title;
	private Date regDate;
	private String contents;
	private long likes;
	public long getNo_num() {
		return no_num;
	}
	public void setNo_num(long no_num) {
		this.no_num = no_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public long getLikes() {
		return likes;
	}
	public void setLikes(long likes) {
		this.likes = likes;
	}
	
	
}
