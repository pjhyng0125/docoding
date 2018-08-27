package com.encore.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.encore.vo.Buy_post;
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
	
	
	
	//������DAO
	//�������� �´� �Խù� ��ȸ
	public List<Sell_post> selectSPAll(Map<String, Object> map) {
		List<Sell_post> list = null;
		try {
			list = smc.queryForList("sp.selectSPAll",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// �ش� �� ���� ��ȸ
	public Sell_post select(int no) {
		try {
			return (Sell_post) smc.queryForObject("sp.selectContent",no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// ��ü ������ �� ��ȸ
	public int selectTotalPage(Map<String, Object> map) {
		try {
			System.out.println(map);
			return (int) smc.queryForObject("sp.selectTotalPage",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}

	
	//��ǰ ���Ű���
	public int selectCash(String id) {
		try {
			return (int) smc.queryForObject("sp.selectCash",id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public boolean updateCash(String id) {
		try {
			int t = smc.update("sp.updateCash",id);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updateSoldCnt(int sp_no) {
		try {
			int t = smc.update("sp.updateSoldCnt",sp_no);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	// �ش� �Խù� ���ſ��� Ȯ��
	public boolean selectBuyPost(Map<String,Object> map) {
		try {
			int t = (int) smc.queryForObject("sp.selectBuyPost",map);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// ������ ���
	public boolean insertBuyPost(Buy_post bp) {
		try {
			smc.insert("sp.insertBuyPost",bp);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//�Խù� ��ȸ�� ����
	public boolean updateSelectCnt(Map<String, Object> map) {
		try {
			int t = smc.update("sp.updateSelectCnt",map);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//�Խ��� ���̵� Ȯ��
	public String selectSpId(int no) {
		try {
			return (String) smc.queryForObject("sp.selectSpId",no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//�Ǹ��� ���� Ȯ��
	public String checkAssign(String id) {
		try {
			int t = (int) smc.queryForObject("sp.checkAssign",id);
			if(t==1) return "true";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "false";
	}
	
	//�˻����
	public List<Sell_post> searchPost(String sp_title) {
		List<Sell_post> list=null;
		try {
			list = smc.queryForList("sp.searchPost", sp_title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
