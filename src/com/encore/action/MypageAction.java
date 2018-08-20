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
		// ��й�ȣ Ȯ��
		// ��ɾ�� ��й�ȣ�� �������� ���� �������� ����.
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
			//request.setAttribute("msg", "1234");					// ��õ��� �� ��
			forward = mapping.findForward("message");
			break;
		case "a_assign_seller":
			
			String account_num = request.getParameter("account_num");	// ���¹�ȣ �ޱ�
		
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
				System.out.println("���� id�� �α��� ���� id ����ġ");
				request.setAttribute("msg", "fail");
			}
			forward = mapping.findForward("message");
			break;
			
		case "sel_buylist":											// ���Ÿ�� �ҷ�����
			
			//request.setAttribute("buylist", dao.select_buylist(id));
			String page = request.getParameter("page");
			int pageNo = Integer.parseInt(page);				// ¤�� �Ѿ���� �κ�.
			int end = pageNo*5;
			String start = end-4+"";
			
			Map<String, String> map = new HashMap<>();
			map.put("end", end+"");
			map.put("start", start);
			map.put("id", id);
			
			List<Map> list = new ArrayList<>();
			
			if(dao.count_buylist(id)==0) {
				request.setAttribute("msg", "�ڷḦ ������ ����� �����ϴ�.");
				forward = mapping.findForward("message");
				break;
			}else {
				
				request.setAttribute("max_page", dao.total_page(id,5+""));
				System.out.println("map_page : "+dao.total_page(id,5+""));
				//System.out.println(dao.count_buylist(id));
				//list = dao.select_buylist(id);
				list = dao.select_page(map);
				System.out.println("list : "+list);
				request.setAttribute("list", list);
			}
			
			request.setAttribute("pageAction", pageAction);
			forward = mapping.findForward("buylist");
			break;
		
		} // switch - case�� ����

		return forward;
	}
}
