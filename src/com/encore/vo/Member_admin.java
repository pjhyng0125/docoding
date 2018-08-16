package com.encore.vo;

import java.sql.Date;

public class Member_admin {
	private String id;
	private String name;
	private String gender;
	private String birth;
	private String email;
	private String phone;
	private Date m_time;
	private boolean login_flag;
	private String autho;
	public Member_admin() {
		super();
	}
	public Member_admin(String id, String name, String gender, String birth, String email, String phone, Date m_time,
			boolean login_flag, String autho) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.m_time = m_time;
		this.login_flag = login_flag;
		this.autho = autho;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getM_time() {
		return m_time;
	}
	public void setM_time(Date m_time) {
		this.m_time = m_time;
	}
	public boolean isLogin_flag() {
		return login_flag;
	}
	public void setLogin_flag(boolean login_flag) {
		this.login_flag = login_flag;
	}
	public String getAutho() {
		return autho;
	}
	public void setAutho(String autho) {
		this.autho = autho;
	}
	@Override
	public String toString() {
		return "Member_admin [id=" + id + ", name=" + name + ", gender=" + gender + ", birth=" + birth + ", email="
				+ email + ", phone=" + phone + ", m_time=" + m_time + ", login_flag=" + login_flag + ", autho=" + autho
				+ "]";
	}
	
	
}

