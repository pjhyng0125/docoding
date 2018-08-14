package com.encore.vo;

import java.sql.Date;

public class Sell_assign {
	private String id;
	private String account_num;
	private Date sa_time;
	private String sale_flag;
	private int sell_count;
	public Sell_assign() {
		super();
	}
	public Sell_assign(String id, String account_num, Date sa_time, String sale_flag, int sell_count) {
		super();
		this.id = id;
		this.account_num = account_num;
		this.sa_time = sa_time;
		this.sale_flag = sale_flag;
		this.sell_count = sell_count;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAccount_num() {
		return account_num;
	}
	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}
	public Date getSa_time() {
		return sa_time;
	}
	public void setSa_time(Date sa_time) {
		this.sa_time = sa_time;
	}
	public String getSale_flag() {
		return sale_flag;
	}
	public void setSale_flag(String sale_flag) {
		this.sale_flag = sale_flag;
	}
	public int getSell_count() {
		return sell_count;
	}
	public void setSell_count(int sell_count) {
		this.sell_count = sell_count;
	}
	@Override
	public String toString() {
		return "Sell_assign [id=" + id + ", account_num=" + account_num + ", sa_time=" + sa_time + ", sale_flag="
				+ sale_flag + ", sell_count=" + sell_count + "]";
	}
	
	
}

