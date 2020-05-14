package com.doom.s1.payment;

public class PaymentVO {
	
	private long pc_num;
	private long pay_num;
	private long pay_total;
	
	public long getPc_num() {
		return pc_num;
	}
	public void setPc_num(long pc_num) {
		this.pc_num = pc_num;
	}
	public long getPay_num() {
		return pay_num;
	}
	public void setPay_num(long pay_num) {
		this.pay_num = pay_num;
	}
	public long getPay_total() {
		return pay_total;
	}
	public void setPay_total(long pay_total) {
		this.pay_total = pay_total;
	}
	
}
