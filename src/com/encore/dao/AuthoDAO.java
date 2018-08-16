package com.encore.dao;

import java.sql.SQLException;
import java.util.List;

import com.encore.vo.Sell_assign;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class AuthoDAO {
	SqlMapClient smc;
	public AuthoDAO() {
		smc=MySqlMapClient.getSqlMapInstance();
	}
	public List<Sell_assign> select_autho() throws SQLException {
		return smc.queryForList("autho.select_autho");
	}
}
