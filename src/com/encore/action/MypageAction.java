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
		// 비밀번호 확인
		// 명령어와 비밀번호를 보내려면 맵을 보내야할 같다.
		case "m_search_pwd": 
			
			// request.setAttribute("pwd", dao.search_pwd(id));
			request.setAttribute("pageAction", pageAction);
			request.setAttribute("pwd", "1234");					// 잠시동안 쓸 값
			
			request.setAttribute("member",m=new Member("abcd1234", "1234", "홍길동", null,"1999-09-09", "abcd1234@naver.com", "010-1234-5678",false, null) );						// 잠시동안 쓸 ㄱ밧
			forward = mapping.findForward("modify");
			break;

		case "m_modify_form":
			
			//request.setAttribute("result", dao.modify_form(id));
			System.out.println("pass : "+request.getParameter("pwd"));
			request.setAttribute("result", true);
			request.setAttribute("pageAction", pageAction);
			//id="";
			forward = mapping.findForward("modify");
			break;

		case "a_search_pwd":
			
			// request.setAttribute("pwd", dao.search_pwd(id));
			request.setAttribute("pageAction", pageAction);
			request.setAttribute("pwd", "1234");					// 잠시동안 쓸 값
			forward = mapping.findForward("assign");
			break;
		}

		return forward;
	}
}
