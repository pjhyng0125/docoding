package com.encore.dao;

import java.sql.SQLException;
import java.util.List;

import com.encore.vo.Free_reply;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class Free_replyDAO {
SqlMapClient smc;
	
	public Free_replyDAO() {
		smc = MySqlMapClient.getSqlMapInstance();
	}
	
	public List<Free_reply> selectReply(int fp_no) {
		List<Free_reply> list = null;
		try {
			list = smc.queryForList("fr.selectReply", fp_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean insertReply(Free_reply fr) {
		try {
			smc.insert("fr.insertReply", fr);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean deleteReply(int fr_no) {
		try {
			int t = smc.delete("fr.deleteReply", fr_no);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
