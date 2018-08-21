package com.encore.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.MemberDAO;
import com.encore.vo.Member;

public class LoginAction extends Action {

		
		@Override
		public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
				HttpServletResponse response) throws Exception {
			
			
			String id = request.getParameter("userid");
			String pass = request.getParameter("userpass");
			
			
			Map<String,String> map = new HashMap<>();
			map.put("userid", id); //map.put("name","우영");
			map.put("userpass", pass); //map.put("name","우영");
			System.out.println("loginMap>>"+map);
			
			
			MemberDAO dao = new MemberDAO();
			boolean flag = dao.login(map);
			
			ActionForward forward;
			if(!flag) {
				forward = mapping.findForward("failL");
			}else {
				 request.setAttribute("flag", flag); 
				
				 HttpSession session = request.getSession();
				 session.setAttribute("flag", flag);

				 forward = mapping.findForward("successL");
			}
				
			
			return forward;
		}
	
}
