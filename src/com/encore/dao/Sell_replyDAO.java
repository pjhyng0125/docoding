package com.encore.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.encore.vo.Sell_reply;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class Sell_replyDAO {
	SqlMapClient smc;
	
	public Sell_replyDAO() {
		smc = MySqlMapClient.getSqlMapInstance();
	}
	
	public List<Sell_reply> selectReply(int sp_no) {
		List<Sell_reply> list = null;
		try {
			list = smc.queryForList("sr.selectReply", sp_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean insertReply(Sell_reply sr) {
		try {
			smc.insert("sr.insertReply", sr);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updateReply(Map<String, Object> map) {
		try {
			int t = smc.update("sr.updateReply",map);
			if(t>0) return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean deleteReply(int sr_no) {
		try {
			int t = smc.delete("sr.deleteReply", sr_no);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
