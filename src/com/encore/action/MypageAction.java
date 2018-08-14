package com.encore.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.MypageDAO;
import com.encore.vo.Member;

public class MypageAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		MypageDAO dao = new MypageDAO();
		ActionForward forward = null;
		String pageAction = request.getParameter("pageAction");
		String id = request.getParameter("id");
		Member m ;
		System.out.println("pageAction : " + pageAction);
		System.out.println("id : " + id);

		switch (pageAction) {
		// ��й�ȣ Ȯ��
		// ���ɾ�� ��й�ȣ�� �������� ���� �������� ����.
		case "m_search_pwd": 
			
			// request.setAttribute("pwd", dao.search_pwd(id));
			request.setAttribute("pageAction", pageAction);
			request.setAttribute("pwd", "1234");					// ��õ��� �� ��
			
			request.setAttribute("member",m=new Member("abcd1234", "1234", "ȫ�浿", null,"1999-09-09", "abcd1234@naver.com", "010-1234-5678",false, null) );						// ��õ��� �� ����
			forward = mapping.findForward("modify");
			break;

		case "m_modify_form":
			
			//request.setAttribute("result", dao.modify_form(id));
			//System.out.println("pass : "+request.getParameter("pwd"));
			request.setAttribute("result", true);
			request.setAttribute("pageAction", pageAction);
			//id="";
			forward = mapping.findForward("modify");
			break;

		case "a_search_pwd":
			
			// request.setAttribute("pwd", dao.search_pwd(id));
			request.setAttribute("pageAction", pageAction);
			request.setAttribute("msg", "1234");					// ��õ��� �� ��
			forward = mapping.findForward("message");
			break;
		case "a_assign_seller":
			
			String account_num = request.getParameter("account_num");	// ���¹�ȣ �ޱ�
			request.setAttribute("pageAction", pageAction);
			//request.setAttribute("result", dao.assign_seller(id, account_num));
			request.setAttribute("msg", true);
			forward = mapping.findForward("message");
			break;
			
		case "d_drop_member":
			id="abcd";
			String id_d = request.getParameter("id_d");
			String name = request.getParameter("name");
			String pass = request.getParameter("pass");
			if(id.equals(id_d)) {
				//request.setAttribute("msg", dao.drop_member(id_d, name, pass));
				request.setAttribute("msg", true);
			}else {
				System.out.println("���� id�� �α��� ���� id ����ġ");
				request.setAttribute("msg", "fail");
			}
			
			forward = mapping.findForward("message");
			break;
		
		} // switch - case�� ����

		return forward;
	}
}