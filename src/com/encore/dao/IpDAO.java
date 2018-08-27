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
	public boolean selectFreeIpChk(Map<String, Object> map){
		try {
			int t = (int) smc.queryForObject("fi.selectFreeIpChk",map);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean insertFreeIp(Map<String, Object> map) {
		try {
			smc.insert("fi.insertFreeIp",map);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public int selectFiCnt(int no) {
		try {
			return (int) smc.queryForObject("fi.selectFiCnt",no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	//sell_ip
	public boolean selectSellIpChk(Map<String, Object> map){
		try {
			int t = (int) smc.queryForObject("si.selectSellIpChk",map);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean insertSellIp(Map<String, Object> map) {
		try {
			smc.insert("si.insertSellIp",map);
		    return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public int selectSiCnt(int no) {
		try {
			return (int) smc.queryForObject("si.selectSiCnt",no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
}
