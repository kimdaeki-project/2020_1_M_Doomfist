package com.doom.s1.paymentcheck;

public class PaymentCheckVO {

	private String id;
	private long pay_num;
	private long st_key;
	private long sm_key;
	private String pc_menu;
	private long pc_count;
	private long pc_cmprice;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getPc_menu() {
		return pc_menu;
	}
	public void setPc_menu(String pc_menu) {
		this.pc_menu = pc_menu;
	}
	public long getPc_count() {
		return pc_count;
	}
	public void setPc_count(long pc_count) {
		this.pc_count = pc_count;
	}
	public long getPc_cmprice() {
		return pc_cmprice;
	}
	public void setPc_cmprice(long pc_cmprice) {
		this.pc_cmprice = pc_cmprice;
	}
	
	
}
