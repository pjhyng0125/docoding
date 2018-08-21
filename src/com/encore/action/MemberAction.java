package com.encore.action;

import java.io.PrintWriter;
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
		System.out.println(action);
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
			
		}else if(action.equals("select_idCheck")) {
			if(dao.select_idCheck(request.getParameter("id"))) {
				
			}else {
				
			}
		}
		return forward;
	
		
	}
/*    public Map<Object, Object> idcheck(@RequestBody Member m) {
        
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        count = signupService.idcheck(m);
        map.put("cnt", count);
 
        return map;
    }*/
 
	
	
}
	
