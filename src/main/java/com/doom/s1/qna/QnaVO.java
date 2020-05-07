package com.doom.s1.qna;

import java.sql.Date;

public class QnaVO {

	private long qna_num;
	private String qna_title;
	private String id;
	private String qna_contents;
	private Date qna_Date;
	
	
	public long getQna_num() {
		return qna_num;
	}
	public void setQna_num(long qna_num) {
		this.qna_num = qna_num;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getQna_contents() {
		return qna_contents;
	}
	public void setQna_contents(String qna_contents) {
		this.qna_contents = qna_contents;
	}
	public Date getQna_Date() {
		return qna_Date;
	}
	public void setQna_Date(Date qna_Date) {
		this.qna_Date = qna_Date;
	}
	
	
	
}
