package com.encore.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.encore.vo.Free_post;
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
	
	public List<Free_post> selectFPAll(Map<String, Object> map) {
		List<Free_post> list = null;
		try {
			list = smc.queryForList("fp.selectFPAll",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public Free_post select(int no) {
		try {
			return (Free_post) smc.queryForObject("fp.selectContent",no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public int selectTotalPage(Map<String, Object> map) {
		try {
			System.out.println(map);
			return (int) smc.queryForObject("fp.selectTotalPage",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public boolean deletePost(int no) {
		try {
			int t=smc.delete("fp.deletePost",no);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
