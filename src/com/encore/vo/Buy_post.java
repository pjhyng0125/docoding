package com.encore.vo;

public class Buy_post {
	private String bp_id;
	private int sp_no;
	private String bp_time;
	
	
	
	public Buy_post(String bp_id, int sp_no, String bp_time) {
		super();
		this.bp_id = bp_id;
		this.sp_no = sp_no;
		this.bp_time = bp_time;
	}

	public Buy_post() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Buy_post [bp_id=" + bp_id + ", sp_no=" + sp_no + ", bp_time=" + bp_time + "]";
	}

	public String getBp_id() {
		return bp_id;
	}

	public void setBp_id(String bp_id) {
		this.bp_id = bp_id;
	}

	public int getSp_no() {
		return sp_no;
	}

	public void setSp_no(int sp_no) {
		this.sp_no = sp_no;
	}

	public String getBp_time() {
		return bp_time;
	}

	public void setBp_time(String bp_time) {
		this.bp_time = bp_time;
	}
	
	
}
