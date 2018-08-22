package com.encore.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.encore.dao.MemberDAO;

public class JoinAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("joinaction execute()...");
		MemberDAO mem_dao=new MemberDAO();
		String action=request.getParameter("action");
		String id=request.getParameter("checkid");
		response.setContentType("text/html; charset=UTF-8");
		System.out.println(action);
		if(action.equals("idcheck")) {
			System.out.println("joinaction: in!");
			if(mem_dao.select_idCheck(id)) {
				response.getWriter().write("<font color=red>아이디 중복</font>");
			}else {
				response.getWriter().write("<font color=green>아이디 사용 가능</font>");				
			}
		}
//		JoinActionForm jaf=(JoinActionForm)form;
//		MemberDAO mem_dao=new MemberDAO();
//		ActionMessages msgs=new ActionMessages();
//		
//		String id=jaf.getId();
//		String pass=jaf.getPass();
//		
//		System.out.println("id, pass:"+id+", "+pass);
//		
//		if(mem_dao.select_idCheck(id)) {
//			System.out.println("아이디 중복");
//			msgs.add(ActionMessages.GLOBAL_MESSAGE
//				,new ActionMessage("error.invalididcheck"));
//			saveMessages(request, msgs);
//		}else {
//			msgs.add(ActionMessages.GLOBAL_MESSAGE
//					,new ActionMessage("error.passidcheck"));
//				saveMessages(request, msgs);
//		}
		
		return mapping.findForward("joinpage");
	}
}
