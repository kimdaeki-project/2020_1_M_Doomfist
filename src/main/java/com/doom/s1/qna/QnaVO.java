package com.doom.s1.qna;

import java.sql.Date;

public class QnaVO {

	private long qna_storeKey;
	private String qna_title;
	private String id;
	private String qna_contents;
	private Date qna_date;
	private String qna_phone;
	
	public long getQna_storeKey() {
		return qna_storeKey;
	}
	public void setQna_storeKey(long qna_storeKey) {
		this.qna_storeKey = qna_storeKey;
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
	public Date getQna_date() {
		return qna_date;
	}
	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	public String getQna_phone() {
		return qna_phone;
	}
	public void setQna_phone(String qna_phone) {
		this.qna_phone = qna_phone;
	}
	
	
	
}
