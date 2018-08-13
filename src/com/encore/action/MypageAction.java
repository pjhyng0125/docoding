package com.encore.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.MypageDAO;

public class MypageAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		response.setContentType("text/html; charset=UTF-8");
		MypageDAO dao = new MypageDAO();
		ActionForward forward = null;
		String pageAction= request.getParameter("pageAction");	
		String id= request.getParameter("id");
		
		System.out.println("pageAction : "+pageAction);
		System.out.println("id : "+id);
		
		switch(pageAction) {
							// ��й�ȣ Ȯ��
							//��ɾ�� ��й�ȣ�� �������� ���� �������� ����.
		case "m_search_pwd" :     //request.setAttribute("pwd", dao.search_pwd(id));
							request.setAttribute("pageAction", pageAction);
							request.setAttribute("pwd", "1234");
							forward = mapping.findForward("modify");
							break;
		
		}
		
		return forward;
	}
}
