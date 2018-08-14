package com.encore.dao;

import java.sql.SQLException;
import java.util.List;

import com.encore.vo.Sell_post;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class Sell_postDAO {
	SqlMapClient smc;
	
	public Sell_postDAO() {
		smc=MySqlMapClient.getSqlMapInstance();
	}
	
	public boolean insert_sellpost(Sell_post sp) {
		try {
			smc.insert("sp.insert_sellpost", sp);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<Sell_post> select_sellpost() throws SQLException {
		return smc.queryForList("sp.select_sellpost");
	}
	
}
