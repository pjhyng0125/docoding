package com.encore.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class IpDAO {
	SqlMapClient smc;
	
	public IpDAO() {
		smc = MySqlMapClient.getSqlMapInstance();
	}
	
	//free_ip
	public boolean selectFreeIpChk(Map map){
		try {
			int t = (int) smc.queryForObject("fi.selectFreeIpChk",map);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean insertFreeIp(Map map) {
		try {
			int t = (int) smc.insert("fi.insertFreeIp",map);
			if(t>0) return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	//sell_ip
	public boolean selectSellIpChk(Map map){
		try {
			int t = (int) smc.queryForObject("si.selectSellIpChk",map);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean insertSellIp(Map map) {
		try {
			smc.insert("si.insertSellIp",map);
		    return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public int selectSelectCnt(int no) {
		try {
			return (int) smc.queryForObject("si.selectSelectCnt",no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
}
