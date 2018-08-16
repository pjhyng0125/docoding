package com.encore.dao;

import java.sql.SQLException;
import java.util.List;

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
	
}
