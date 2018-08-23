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
			String action=request.getParameter("action");
			MemberDAO dao = new MemberDAO();
			ActionForward forward =null;
			Map<String,String> map=null;
			response.setContentType("text/html; charset=UTF-8");
			if(action==null) {
				//session
				System.out.println("in session");
				if(request.getSession().getAttribute("login_id")==null) {
					System.out.println("nologin");
					forward=mapping.findForward("nologin");
				}else {
					System.out.println("login");
					forward=mapping.findForward("login");
				}
			}else if(action.equals("login")) {
			String id = request.getParameter("userid");
			String pass = request.getParameter("userpass");
			
			map = new HashMap<>();
			map.put("userid", id); //map.put("name","우영");
			map.put("userpass", pass); //map.put("name","우영");
			System.out.println("loginMap>>"+map);
			
			boolean flag = dao.login(map);
			
			if(!flag) {	//id와 pw 불일치
				//forward = mapping.findForward("failL");
				response.getWriter().println("아이디 또는 비밀번호 불일치");
			}else {	//id와 pw 일치
				boolean login_flag=dao.select_login_flag(id);
				System.out.println("login_flag:"+login_flag);
				if(!login_flag) {//login_flag='0'이면
					if(dao.update_login_flag(id))
						System.out.println("user "+id+" login_flag: 0 -> 1");
				 
					//session 영역 저장
					request.setAttribute("flag", flag); 
					HttpSession session = request.getSession();
					session.setAttribute("flag", flag);
					//session 영역에 로그인 idd 저장
					session.setAttribute("login_id", id);
				 
					forward = mapping.findForward("successL");
				}//if-dao
				else {	//login_flag='1'이면 이미 접속중이면
					System.out.println(id+"는 현재 접속중입니다.");
					response.getWriter().println(id+"는 현재 접속중입니다!");
				}
			}//else
			}//if-action
			else if(action.equals("logout")) {
				String logout_id=request.getParameter("logout_id");
				if(dao.update_logout_flag(logout_id))
						System.out.println("user "+logout_id+" logout_flag: 1 -> 0");
						System.out.println(request.getSession().getAttribute("login_id"));
						request.getSession().invalidate();
						System.out.println(request.getSession().getAttribute("login_id"));
				forward = mapping.findForward("loginL");
			}
			
			
			return forward;
		}
	
}
