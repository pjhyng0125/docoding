package com.encore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.encore.util.DBConnection;
import com.encore.vo.Member_admin;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.MySqlMapClient;

public class MemberDAO {
	SqlMapClient smc;
	public MemberDAO() {
		smc=MySqlMapClient.getSqlMapInstance();
		

	}
public boolean login(Map<String,String> map) {
		
		
		try {
		   int cnt = (Integer) smc.queryForObject("main.login", map);
			if(cnt==1) return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;

	}
private static MemberDAO instance;
	
	public static MemberDAO getInstance(){
		if(instance==null)
			instance=new MemberDAO();
		return instance;
	}
	
	public List<Member_admin> select_admin() throws SQLException {
		return smc.queryForList("mem.select_admin");
		
	}
	public boolean duplicateIdCheck(String id)
	{
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean x= false;
		
		try {
			
			StringBuffer query = new StringBuffer();
			query.append("SELECT ID FROM JSP_MEMBER WHERE ID=?");
						
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(query.toString());
			pstm.setString(1, id);
			rs = pstm.executeQuery();
			
			if(rs.next()) x= true; 
			
			return x;
			
		} catch (Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		} finally {
			try{
				if ( pstm != null ){ pstm.close(); pstm=null; }
				if ( conn != null ){ conn.close(); conn=null;	}
			}catch(Exception e){
				throw new RuntimeException(e.getMessage());
			}
		}
	}
	}


