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
			map.put("userid", id); //map.put("name","�쿵");
			map.put("userpass", pass); //map.put("name","�쿵");
			System.out.println("loginMap>>"+map);
			
			boolean flag = dao.login(map);
			
			if(!flag) {	//id�� pw ����ġ
				//forward = mapping.findForward("failL");
				response.getWriter().println("���̵� �Ǵ� ��й�ȣ ����ġ");
			}else {	//id�� pw ��ġ
				boolean login_flag=dao.select_login_flag(id);
				System.out.println("login_flag:"+login_flag);
				if(!login_flag) {//login_flag='0'�̸�
					if(dao.update_login_flag(id))
						System.out.println("user "+id+" login_flag: 0 -> 1");
				 
					//session ���� ����
					request.setAttribute("flag", flag); 
					HttpSession session = request.getSession();
					session.setAttribute("flag", flag);
					//session ������ �α��� idd ����
					session.setAttribute("login_id", id);
				 
					forward = mapping.findForward("successL");
				}//if-dao
				else {	//login_flag='1'�̸� �̹� �������̸�
					System.out.println(id+"�� ���� �������Դϴ�.");
					response.getWriter().println(id+"�� ���� �������Դϴ�!");
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
