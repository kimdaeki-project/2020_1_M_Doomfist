package com.doom.s1.payment;

public class PaymentVO {
	
	private String id;
	private long pay_price;
	private long pay_num;
	private long st_key;
	private long sm_key;
	private long pay_count;
	private long pay_check;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public long getPay_price() {
		return pay_price;
	}
	public void setPay_price(long pay_price) {
		this.pay_price = pay_price;
	}
	public long getPay_num() {
		return pay_num;
	}
	public void setPay_num(long pay_num) {
		this.pay_num = pay_num;
	}
	public long getSt_key() {
		return st_key;
	}
	public void setSt_key(long st_key) {
		this.st_key = st_key;
	}
	public long getSm_key() {
		return sm_key;
	}
	public void setSm_key(long sm_key) {
		this.sm_key = sm_key;
	}
	public long getPay_count() {
		return pay_count;
	}
	public void setPay_count(long pay_count) {
		this.pay_count = pay_count;
	}
	public long getPay_check() {
		return pay_check;
	}
	public void setPay_check(long pay_check) {
		this.pay_check = pay_check;
	}
	
	

}
