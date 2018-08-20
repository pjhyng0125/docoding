package com.encore.vo;

import java.sql.Date;

public class Free_post {
	private int fp_no;
	private String fp_category;
	private String fp_title;
	private String fp_content;
	private String id;
	private String fp_time;
	private int fp_count;
	
	public Free_post() {
		super();
	}

	public Free_post(int fp_no, String fp_category, String fp_title, String fp_content, String id, String fp_time,
			int fp_count) {
		super();
		this.fp_no = fp_no;
		this.fp_category = fp_category;
		this.fp_title = fp_title;
		this.fp_content = fp_content;
		this.id = id;
		this.fp_time = fp_time;
		this.fp_count = fp_count;
	}

	public int getfp_no() {
		return fp_no;
	}

	public void setfp_no(int fp_no) {
		this.fp_no = fp_no;
	}

	public String getFp_category() {
		return fp_category;
	}

	public void setFp_category(String fp_category) {
		this.fp_category = fp_category;
	}

	public String getFp_title() {
		return fp_title;
	}

	public void setFp_title(String fp_title) {
		this.fp_title = fp_title;
	}

	public String getFp_content() {
		return fp_content;
	}

	public void setFp_content(String fp_content) {
		this.fp_content = fp_content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFp_time() {
		return fp_time;
	}

	public void setFp_time(String fp_time) {
		this.fp_time = fp_time;
	}

	public int getFp_count() {
		return fp_count;
	}

	public void setFp_count(int fp_count) {
		this.fp_count = fp_count;
	}

	@Override
	public String toString() {
		return "Free_post [fp_no=" + fp_no + ", fp_category=" + fp_category + ", fp_title=" + fp_title
				+ ", fp_content=" + fp_content + ", id=" + id + ", fp_time=" + fp_time + ", fp_count=" + fp_count + "]";
	}
	
	
	
	
}

