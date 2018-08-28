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
		case "print":
			String login_id=request.getParameter("login_id");
			System.out.println("login_id:"+login_id);
			if(login_id==null) {
				response.getWriter().write("로그인이 필요합니다");
			}else {
				int sell=dao.select_sp_id(login_id);
				int buy=dao.select_bp_id(login_id);
				int cash=dao.select_m_cash(login_id);
				
				
				request.setAttribute("cash", cash);
				request.setAttribute("sell", sell);
				request.setAttribute("buy", buy);
				
				System.out.println("cash:"+cash+" sell:"+sell+" buy:"+buy);
				response.getWriter().write(cash+","+sell+","+buy);
			}
			forward=null;
			break;
		case "basic":
			
			HashMap<String, String> basic_map = dao.select_basic(id);
			//System.out.println("time: "+basic_map.get("M_TIME")+" cash : "+basic_map.get("CASH"));
			basic_map.put("check", dao.check_assign(id)+"");
			basic_map.put("id",id);
			System.out.println("check:" + basic_map.get("check") );
			request.setAttribute("map", basic_map);
			forward = mapping.findForward("basic");
			break;
			
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
			
		case "check_assign":
			request.setAttribute("msg", dao.check_assign(id));
			forward = mapping.findForward("message");
			break;

		case "a_search_pwd":
			
			request.setAttribute("msg", dao.search_pwd(id));
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("message");
			break;
			
		case "a_assign_seller":
			
			String account_num = request.getParameter("account_num");	// 계좌번호 받기
		
			request.setAttribute("pageAction", pageAction);
			request.setAttribute("msg", dao.assign_seller(id, account_num));
			if(dao.check_assign(id)) {
				request.getSession().setAttribute("assign", "assign");				
			}
			forward = mapping.findForward("message");
			break;	
			
		case "d_drop_member":
			String id_d = request.getParameter("id_d");
			String name = request.getParameter("name");
			String pass = request.getParameter("pass");
			if(id.equals(id_d)) {
				request.setAttribute("msg", dao.drop_member(id_d, name, pass));
			}else {
				System.out.println("삭제 id와 로그인 상태 id 불일치");
				request.setAttribute("msg", "삭제 id와 로그인 상태 id 불일치합니다."
						+ "본인 외의 계정은 삭제하실 수 없습니다.");
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
		
		case "sell_profit":
			
			HashMap<String,Object> sell_map = dao.select_seller(id);
			sell_map.put("ID", id);
			request.setAttribute("pageAction", "sell_profit");
			request.setAttribute("sell_map", sell_map);
			forward = mapping.findForward("sellList");
			break;
		
		case "trans_profit1":
			String id_d2 = request.getParameter("id_d");
			String name2 = request.getParameter("name");
			String pass2 = request.getParameter("pass");
			if(id.equals(id_d2)) {
				if(dao.trans_profit1(id_d2, name2, pass2)) {
					request.setAttribute("msg", dao.trans_profit1(id_d2, name2, pass2));
					request.setAttribute("account", dao.select_account(id_d2, pass2));// 잔액
				}else {
					request.setAttribute("msg", "계정정보 불일치!");
				}
			}else {
				System.out.println("현재 로그인 계정과 출금 계정 불일치");
				request.setAttribute("msg", "본인 외의 다른 계정의 수익은 출금할 수 없습니다!");
			}
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("message");
			break;
			
		case "trans_profit2":
			String trans_money = request.getParameter("trans_money");
			request.setAttribute("msg", dao.trans_profit2(id, Integer.parseInt(trans_money)));
			forward = mapping.findForward("message");
			break;
		
		case "c_check_member":
			
			request.setAttribute("msg", dao.c_check_member(id,
												request.getParameter("pass"),
												request.getParameter("name"),
												request.getParameter("phone")));
			forward = mapping.findForward("message");
			break;
		
		case "c_input_cash":
			request.setAttribute("msg", dao.c_input_cash(id, Integer.parseInt(request.getParameter("cash"))));
			forward = mapping.findForward("message");
			break;
		
		case "history":
			
			String page3 = request.getParameter("page");
			int pageNo3 = Integer.parseInt(page3);				
			int end3 = pageNo3*5;
			String start3 = end3-4+"";
			
			Map<String, String> map3 = new HashMap<>();
			map3.put("end", end3+"");
			map3.put("start", start3);
			map3.put("id", id);
			
			List<Map> list3 = new ArrayList<>();
			
			if(dao.total_history(id, 5+"")==0) {
				request.setAttribute("msg", "게시물 작성 기록이 없습니다.");
				forward = mapping.findForward("message");
				break;
			}else {	
				request.setAttribute("max_page", dao.total_history(id,5+""));
				list3 = dao.select_history(map3);
				System.out.println("history list : "+list3);
				request.setAttribute("list", list3);
			}		
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("history");
			break;
		
		case "history_reply":
			String page4 = request.getParameter("page");
			int pageNo4 = Integer.parseInt(page4);				
			int end4 = pageNo4*5;
			String start4 = end4-4+"";
			
			Map<String, String> map4 = new HashMap<>();
			map4.put("end", end4+"");
			map4.put("start", start4);
			map4.put("id", id);
			
			List<Map> list4 = new ArrayList<>();
			
			if(dao.total_history_reply(id, 5+"")==0) {
				request.setAttribute("msg", "댓글 작성 기록이 없습니다.");
				forward = mapping.findForward("message");
				break;
			}else {	
				request.setAttribute("max_page", dao.total_history(id,5+""));
				list4 = dao.select_history_reply(map4);
				System.out.println("reply list : "+list4);
				request.setAttribute("list", list4);
			}		
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("history");
			break;
		} // switch - case문 종료
		return forward;
	}
}
