package com.encore.vo;

import java.sql.Date;

public class Free_reply {
	private int fr_no;
	private Date fr_time;
	private String fr_id;
	private String fr_content;
	
	public Free_reply() {
		super();
	}

	public Free_reply(int fr_no, Date fr_time, String fr_id, String fr_content) {
		super();
		this.fr_no = fr_no;
		this.fr_time = fr_time;
		this.fr_id = fr_id;
		this.fr_content = fr_content;
	}

	public int getFr_no() {
		return fr_no;
	}

	public void setFr_no(int fr_no) {
		this.fr_no = fr_no;
	}

	public Date getFr_time() {
		return fr_time;
	}

	public void setFr_time(Date fr_time) {
		this.fr_time = fr_time;
	}

	public String getFr_id() {
		return fr_id;
	}

	public void setFr_id(String fr_id) {
		this.fr_id = fr_id;
	}

	public String getFr_content() {
		return fr_content;
	}

	public void setFr_content(String fr_content) {
		this.fr_content = fr_content;
	}

	@Override
	public String toString() {
		return "Free_reply [fr_no=" + fr_no + ", fr_time=" + fr_time + ", fr_id=" + fr_id + ", fr_content=" + fr_content
				+ "]";
	}
	
	 
}
