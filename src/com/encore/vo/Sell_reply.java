package com.encore.vo;


public class Sell_reply {
	private int sr_no;
	private int sp_no;
	private String sr_time;
	private String sr_id;
	private String sr_content;
	
	public Sell_reply() {
		// TODO Auto-generated constructor stub
	}

	public Sell_reply(int sr_no, int sp_no, String sr_time, String sr_id, String sr_content) {
		super();
		this.sr_no = sr_no;
		this.sp_no = sp_no;
		this.sr_time = sr_time;
		this.sr_id = sr_id;
		this.sr_content = sr_content;
	}

	@Override
	public String toString() {
		return "Sell_reply [sr_no=" + sr_no + ", sp_no=" + sp_no + ", sr_time=" + sr_time + ", sr_id=" + sr_id
				+ ", sr_content=" + sr_content + "]";
	}

	public int getSr_no() {
		return sr_no;
	}

	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}

	public int getSp_no() {
		return sp_no;
	}

	public void setSp_no(int sp_no) {
		this.sp_no = sp_no;
	}

	public String getSr_time() {
		return sr_time;
	}

	public void setSr_time(String sr_time) {
		this.sr_time = sr_time;
	}

	public String getSr_id() {
		return sr_id;
	}

	public void setSr_id(String sr_id) {
		this.sr_id = sr_id;
	}

	public String getSr_content() {
		return sr_content;
	}

	public void setSr_content(String sr_content) {
		this.sr_content = sr_content;
	}
	
}
