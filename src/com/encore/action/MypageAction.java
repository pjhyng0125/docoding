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
			
		/*	if(dao.check_assign(id)) {							///// 여기가 아니구나! ㅠㅜ
				request.setAttribute("pageAction", pageAction);
				request.setAttribute("msg", "이미 판매자 등록이 완료되었습니다.");
				forward = mapping.findForward("message");
				break;
			}else {}*/
			
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
			
			String page = request.getParameter("page");
			int pageNo = Integer.parseInt(page);				
			int end = pageNo*5;
			String start = end-4+"";
			
			Map<String, String> map = new HashMap<>();
			map.put("end", end+"");
			map.put("start", start);
			map.put("id", id);
			
			List<Map> list = new ArrayList<>();
			
			if(dao.count_buylist(id)==0) {
				request.setAttribute("msg", "자료를 구매한 기록이 없습니다.");
				forward = mapping.findForward("message");
				break;
			}else {	
				request.setAttribute("max_page", dao.total_page(id,5+""));
				list = dao.select_page(map);
				System.out.println("list : "+list);
				request.setAttribute("list", list);
			}		
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("buylist");
			break;
			
		case "mysell":											// 구매목록 불러오기
			
			String page2 = request.getParameter("page");
			int pageNo2 = Integer.parseInt(page2);				
			int end2 = pageNo2*5;
			String start2 = end2-4+"";
			
			Map<String, String> map2 = new HashMap<>();
			map2.put("end", end2+"");
			map2.put("start", start2);
			map2.put("id", id);
			
			List<Map> list2 = new ArrayList<>();
			
			if(dao.total_sellpage(id, 5+"")==0) {
				request.setAttribute("msg", "자료 판매 기록이 없습니다.");
				forward = mapping.findForward("message");
				break;
			}else {	
				
				request.setAttribute("max_page", dao.total_sellpage(id,5+""));
				list2 = dao.select_sellpage(map2);
				System.out.println("list : "+list2);
				request.setAttribute("list", list2);
			}		
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("sellList");
			break;
			
		case "sell_delete":
			
			String no = request.getParameter("no");
			if(dao.sell_delete(id, no)) {
				request.setAttribute("msg", "삭제가 완료 되었습니다.");
				forward = mapping.findForward("message");
				break;
			}else {
				request.setAttribute("msg", "삭제 실패 하였습니다.");
				forward = mapping.findForward("message");
				break;
			}
			
		} // switch - case문 종료

		return forward;
	}
}
