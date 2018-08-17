package com.encore.vo;

import java.sql.Date;

public class Sell_post {
	private int sp_no;
	private String sp_category;
	private String sp_title;
	private String sp_content;
	private String id;
	private String sp_time;
	private String sp_filename;
	private int sp_count;
	
	public Sell_post() {
		super();
	}

	public Sell_post(int sp_no, String sp_category, String sp_title, String sp_content, String id, String sp_time,
			String sp_filename, int sp_count) {
		super();
		this.sp_no = sp_no;
		this.sp_category = sp_category;
		this.sp_title = sp_title;
		this.sp_content = sp_content;
		this.id = id;
		this.sp_time = sp_time;
		this.sp_filename = sp_filename;
		this.sp_count = sp_count;
	}

	public int getSp_no() {
		return sp_no;
	}

	public void setSp_no(int sp_no) {
		this.sp_no = sp_no;
	}

	public String getSp_category() {
		return sp_category;
	}

	public void setSp_category(String sp_category) {
		this.sp_category = sp_category;
	}

	public String getSp_title() {
		return sp_title;
	}

	public void setSp_title(String sp_title) {
		this.sp_title = sp_title;
	}

	public String getSp_content() {
		return sp_content;
	}

	public void setSp_content(String sp_content) {
		this.sp_content = sp_content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSp_time() {
		return sp_time;
	}

	public void setSp_time(String sp_time) {
		this.sp_time = sp_time;
	}

	public String getSp_filename() {
		return sp_filename;
	}

	public void setSp_filename(String sp_filename) {
		this.sp_filename = sp_filename;
	}

	public int getSp_count() {
		return sp_count;
	}

	public void setSp_count(int sp_count) {
		this.sp_count = sp_count;
	}

	@Override
	public String toString() {
		return "Sell_post [sp_no=" + sp_no + ", sp_category=" + sp_category + ", sp_title=" + sp_title + ", sp_content="
				+ sp_content + ", id=" + id + ", sp_time=" + sp_time + ", sp_filename=" + sp_filename + ", sp_count="
				+ sp_count + "]";
	}
	
	
	
}
