package com.encore.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.encore.vo.Member;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class MypageDAO {

	SqlMapClient smc;
	
	public MypageDAO() {
		smc = MySqlMapClient.getSqlMapInstance();
	}
	
	public String search_pwd(String id) {	// 비밀벊호 확인
		String pwd = null;
		try {
			pwd = (String) smc.queryForObject("mypage.select_pwd", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pwd;
	}
	
	public Member modify_form(String id) {	// 회원정보 띄우기
		Member m = null;
		try {
			m = (Member) smc.queryForObject("mypage.modify_form", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return m;
	}
	
	public boolean modify(Member m) {		// 회원 정보 수정하기
		
		try {
			int t =smc.update("mypage.modify", m);
			if(t>0) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean assign_seller(String id, String account_num) {	// 판매자 등록
		
		Map<String, String>map = new HashMap<>();
		map.put("id", id);
		map.put("account_num", account_num);
		try {
			smc.insert("mypage.assign_seller", map);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean drop_member(String id, String name,String pass) { // 회원탈퇴
		Map<String, String>map = new HashMap<>();
		map.put("id", id);
		map.put("name", name);
		map.put("pass", pass);
		
		try {
			int t = smc.delete("mypage.drop_member", map);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<Map> select_buylist(String id) {
		
		List<Map> list = null;
		
		try {
			list = smc.queryForList("mypage.select_list", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public int count_buylist(String id) {
		int t=0;
		try {
			t = (Integer)smc.queryForObject("mypage.count_buylist", id);
			return t;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return t;
	}
}
