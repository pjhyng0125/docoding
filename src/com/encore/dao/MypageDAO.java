package com.encore.dao;

import java.sql.SQLException;

import com.encore.vo.Member;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class MypageDAO {

	SqlMapClient smc;
	
	public MypageDAO() {
		smc = MySqlMapClient.getSqlMapInstance();
	}
	
	public String search_pwd(String id) {	// 비밀벊호 확인
		String pwd = null;
		try {
			pwd = (String) smc.queryForObject("mypage.select_pwd", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pwd;
	}
	
	public Member modify_form(String id) {	// 회원정보 띄우기
		Member m = null;
		try {
			smc.queryForObject("mypage.modify_form", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return m;
	}
	
	public boolean modify(Member m) {
		
		try {
			int t =smc.update("mypage.modify", m);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
