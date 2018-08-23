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
	
	public int select_m_cash(String id) throws SQLException {
		return (int) smc.queryForObject("mypage.select_m_cash", id);
	}
	public int select_bp_id(String id) throws SQLException {
		return (int) smc.queryForObject("mypage.select_bp_id", id);		
	}
	public int select_sp_id(String id) throws SQLException {
		return (int) smc.queryForObject("mypage.select_sp_id", id);		
	}
	public boolean select_sa_id(String id) {
		try {
			int n=(int)smc.queryForObject("mypage.select_sa_id", id);
			if(n==1)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
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
	/*---------------------------------------------------------------------------*/
	
	public int count_buylist(String id) {	// 페이지 유무에 따라 없으면 조회 결과 없음을 나타내기위에 사용
		int t=0;
		try {
			t = (Integer)smc.queryForObject("mypage.count_buylist", id);
			if(t%5>0) {
				return t+1;
			}else {
				return t;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return t;
	}
	
	public List<Map> select_page(Map<String, String> map) {
		List<Map> list = null;
		try {
			list = smc.queryForList("mypage.select_page",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int total_page(String id, String page_count) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pagecount", page_count);
		try {
			int t = (Integer)smc.queryForObject("mypage.select_totalpage",map);
			return t;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	/*------------------------------ buy list ------------------------*/
	public int total_sellpage(String id, String page_count) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pagecount", page_count);
		try {
			int t = (Integer)smc.queryForObject("mypage.total_sellpage",map);
			return t;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public List<Map> select_sellpage(Map<String, String> map) {
		List<Map> list = null;
		try {
			list = smc.queryForList("mypage.select_sellpage",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean sell_delete(String id, String no) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("sp_no", no);
 		
		try {
			int t = smc.delete("mypage.sell_delete", map);
			System.out.println("t : "+t);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean check_assign(String id) {
		
		try {
			int t = (int) smc.queryForObject("mypage.check_assign", id);
			if(t==1)return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public HashMap<String,String> select_basic(String id) {
		
		HashMap<String, String> map = null;
		try {
			map = (HashMap<String, String>) smc.queryForObject("mypage.select_basic", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return map;
	}
	
	public HashMap<String,Object> select_seller(String id) {
		
		HashMap<String,Object> map = null;
		try {
			map = (HashMap<String, Object>) smc.queryForObject("mypage.select_seller", id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	public boolean trans_profit1(String id, String name,String pass) { // 회원탈퇴
		Map<String, String>map = new HashMap<>();
		map.put("id", id);
		map.put("name", name);
		map.put("pass", pass);
		
		try {
			int t = (int) smc.queryForObject("mypage.trans_profit1", map);
			System.out.println(t);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public int select_account(String id,String pass) {
		Map<String, String>map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);
		int t = 0;
		try {
			t = (int) smc.queryForObject("mypage.select_account", map);
			return t;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return t;
	}
	
	public boolean trans_profit2(String id, int trans_money) {
		Map<String,Object> map = new HashMap<>();
		map.put("id", id);
		map.put("trans_money", trans_money);
		int t_m = trans_money/4;
		try {
			int t = smc.update("mypage.trans_profit2", map);	// 유저 수익 차감
			int t2 = smc.update("mypage.trans_profit3", t_m);	// 관리자 수익전환
			if(t==1 && t2==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean c_check_member(String id, String pass, String name, String phone) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);
		map.put("name", name);
		map.put("phone", phone);
		try {
			int t = (int) smc.queryForObject("mypage.c_check_member", map);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean c_input_cash(String id, int cash) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("cash", cash);
		try {
			int t = smc.update("mypage.c_input_cash", map);
			if(t==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public int total_history(String id, String page_count) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pagecount", page_count);
		try {
			int t = (Integer)smc.queryForObject("mypage.total_history",map);
			return t;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public List<Map> select_history(Map<String, String> map) {
		List<Map> list = null;
		try {
			list = smc.queryForList("mypage.select_history",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int total_history_reply(String id, String page_count) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pagecount", page_count);
		try {
			int t = (Integer)smc.queryForObject("mypage.total_history_reply",map);
			return t;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	public List<Map> select_history_reply(Map<String, String> map) {
		List<Map> list = null;
		try {
			list = smc.queryForList("mypage.select_history_reply",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
