package com.encore.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class MypageDAO {

	SqlMapClient smc;
	
	public MypageDAO() {
		smc = MySqlMapClient.getSqlMapInstance();
	}
	
	public String search_pwd(String id) {
		String pwd = null;
		try {
			pwd = (String) smc.queryForObject("mypage.select_pwd", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pwd;
	}
}
