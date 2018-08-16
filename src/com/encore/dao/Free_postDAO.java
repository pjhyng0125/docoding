package com.encore.dao;

import java.sql.SQLException;
import java.util.List;

import com.encore.vo.Free_post;
import com.encore.vo.Sell_post;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class Free_postDAO {
	SqlMapClient smc;
	public Free_postDAO() {
		smc=MySqlMapClient.getSqlMapInstance();
	}
	
	public boolean insert_freepost(Free_post fp) {
		try {
			smc.insert("fp.insert_freepost", fp);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<Free_post> select_freepost() throws SQLException{
		return smc.queryForList("fp.select_freepost");
	}
}
