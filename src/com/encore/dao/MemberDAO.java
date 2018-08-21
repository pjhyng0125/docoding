package com.encore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.encore.vo.Member;
import com.encore.vo.Member_admin;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class MemberDAO {
	SqlMapClient smc;
	public MemberDAO() {
		smc=MySqlMapClient.getSqlMapInstance();
		}
	
	public List<Member_admin> select_admin() throws SQLException {
		return smc.queryForList("mem.select_admin");
	}
	
	public boolean insert_login(Member m) {
		try {
			smc.insert("mem.insert_login",m);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
	public boolean select_idCheck(String idCheck) {
		try {
			int cnt = (Integer) smc.queryForObject("mem.select_idCheck", idCheck);
			if(cnt==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
public boolean login(Map<String,String> map) {
		
		
		try {
		   int cnt = (Integer) smc.queryForObject("main.login", map);
			if(cnt==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;

	}

}

			
	


