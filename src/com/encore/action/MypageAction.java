package com.encore.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
			
			request.setAttribute("pwd", dao.search_pwd(id));
			request.setAttribute("member", dao.modify_form(id));
			request.setAttribute("pageAction", pageAction);
			
			forward = mapping.findForward("modify");
			break;

		case "m_modify_form":
			m = new Member();
			m.setId(id);
			m.setPass(request.getParameter("pwd"));
			m.setName(request.getParameter("name"));
			m.setEmail(request.getParameter("email"));
			m.setPhone(request.getParameter("phone"));
			
			request.setAttribute("result", dao.modify(m));
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("modify");
			break;

		case "a_search_pwd":
			
			request.setAttribute("msg", dao.search_pwd(id));
			request.setAttribute("pageAction", pageAction);
			//request.setAttribute("msg", "1234");					// 잠시동안 쓸 값
			forward = mapping.findForward("message");
			break;
		case "a_assign_seller":
			
			String account_num = request.getParameter("account_num");	// 계좌번호 받기
		
			request.setAttribute("pageAction", pageAction);
			request.setAttribute("msg", dao.assign_seller(id, account_num));
			forward = mapping.findForward("message");
			break;
			
		case "d_drop_member":
			id="abcd";
			String id_d = request.getParameter("id_d");
			String name = request.getParameter("name");
			String pass = request.getParameter("pass");
			if(id.equals(id_d)) {
				request.setAttribute("msg", dao.drop_member(id_d, name, pass));
			}else {
				System.out.println("삭제 id와 로그인 상태 id 불일치");
				request.setAttribute("msg", "fail");
			}
			forward = mapping.findForward("message");
			break;
			
		case "sel_buylist":											// 구매목록 불러오기
			
			//request.setAttribute("buylist", dao.select_buylist(id));
			List<Map> list = new ArrayList<>();
			/*Map map= new HashMap<>();
			map.put("bp_time", "2017-08-05");
			map.put("sp_category", "java");
			map.put("sp_title", "자바개론");
			map.put("sp_id", "작성자1");
			map.put("sp_count", 13);
			list.add(map);
			Map map2= new HashMap<>();
			map2.put("bp_time", "2017-01-05");
			map2.put("sp_category", "java2");
			map2.put("sp_title", "자바개론2");
			map2.put("sp_id", "작성자2");
			map2.put("sp_count", 15);
			list.add(map2);*/
			if(dao.count_buylist(id)==0) {
				request.setAttribute("msg", "자료를 구매한 기록이 없습니다.");
				forward = mapping.findForward("message");
				break;
			}else {
				list = dao.select_buylist(id);
				System.out.println(list);
				request.setAttribute("list", list);
			}
			
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("buylist");
			break;
		
		} // switch - case문 종료

		return forward;
	}
}
