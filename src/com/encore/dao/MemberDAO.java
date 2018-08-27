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
		smc = MySqlMapClient.getSqlMapInstance();
	}

	public List<Member_admin> select_admin() throws SQLException {
		return smc.queryForList("mem.select_admin");
	}

	public boolean insert_login(Member m) {
		try {
			smc.insert("mem.insert_login", m);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean select_idCheck(String idCheck) {
		try {
			int cnt = (Integer) smc.queryForObject("mem.select_idCheck", idCheck);
			if (cnt == 1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}

	public String select_findId(Map map) throws SQLException {

		return (String) smc.queryForObject("mem.select_findId", map);

	}
	
	public String select_findPw(Map map) throws SQLException{
		return (String) smc.queryForObject("mem.select_findPw", map);
	}

	
	public boolean login(Map<String, String> map) {

		try {
			int cnt = (Integer) smc.queryForObject("main.login", map);
			if (cnt == 1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}

	public boolean select_login_flag(String userid) {
		try {
			return (boolean) smc.queryForObject("mem.select_login_flag", userid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean update_login_flag(String userid) {
		try {
			int n = smc.update("mem.update_login_flag", userid);
			if (n == 1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean update_logout_flag(String userid) {
		try {
			int n = smc.update("mem.update_logout_flag", userid);
			System.out.println("userId:"+userid);
			System.out.println("n:"+n);
			if (n == 1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
