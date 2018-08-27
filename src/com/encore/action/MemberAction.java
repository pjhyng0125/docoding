package com.encore.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.MemberDAO;
import com.encore.vo.Member;

public class MemberAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String id = request.getParameter("userId");
		String action=request.getParameter("action");
		MemberDAO dao = new MemberDAO();
		ActionForward forward=null;
		response.setContentType("text/html; charset=UTF-8");
		System.out.println(action);
		boolean flag;
		if(action.equals("insert_login")) {
			//·Î±×ÀÎ insert
			Member m = new Member();
			m.setId(request.getParameter("id"));
			m.setPass(request.getParameter("pass"));
			m.setName(request.getParameter("name"));
			m.setGender(request.getParameter("gender"));
			m.setBirth(request.getParameter("birth"));
			m.setEmail(request.getParameter("email"));
			m.setPhone(request.getParameter("phone"));
			
			if(dao.insert_login(m)) {
				response.getWriter().print("success");
			}else {
				response.getWriter().print("failled");
			}
			
		}else if(action.equals("select_findId")) {
			Map<String, String> map=new HashMap<>();
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			map.put("name",name);
			map.put("email",email);
			System.out.println(name);
			System.out.println(email);
			String find_id=dao.select_findId(map);
			response.getWriter().write(find_id);
		
		}else if(action.equals("select_findPw")) {
			Map<String, String> map=new HashMap<>();
			String id1=request.getParameter("id");
			String phone=request.getParameter("phone");
			String birth=request.getParameter("birth");
			map.put("id",id1);
			map.put("phone",phone);
			map.put("birth",birth);
			System.out.println(id1);
			System.out.println(phone);
			System.out.println(birth);
			String find_pw=dao.select_findPw(map);
			if(find_pw != null && find_pw.length()>0)
				response.getWriter().write("true");
		}
		
		return forward;
		
	}
}
	
