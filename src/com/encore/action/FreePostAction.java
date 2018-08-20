package com.encore.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.Free_postDAO;
import com.encore.vo.Free_post;

public class FreePostAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action"); //sell or free �Խ���
		String order = request.getParameter("order"); //����Ʈ ���� ���� 0�� ��� ��ȸ��, 1�� ��� ��¥��
		String forwardName = null;
		Free_postDAO dao = new Free_postDAO();

		Map<String, Object> map = new HashMap<>();
		
		if(action==null || action.equals("list")) {
			if(order==null || order.equals("0")) { //��ȸ���̶��
				map.put("fp_count", "fp_count");
			}else { //��¥���̶��
				map.put("fp_time", "fp_time");
			}
			forwardName = "list";			
		}else if(action.equals("search")) {
			String option = request.getParameter("option");
			String searchTxt = request.getParameter("searchTxt");
			if(option !=null) {
				if(option.equals("searchId")) {
					map.put("searchId", "%"+searchTxt+"%");
				}else if(option.equals("searchTitle")){
					map.put("searchTitle", "%"+searchTxt+"%");
				}				
			}
			forwardName="list";
		}
		
		//������ ����
		int pageCount =5;
		map.put("pageCount", pageCount);
		int totalPage = dao.selectTotalPage(map);
		String page = request.getParameter("page"); //"1" "2" "3"
		int pageNo;
		if(page==null || page.equals("")) {
			pageNo = 1;
		}
		else {
			pageNo = Integer.parseInt(page);
		}
		//���۱۹�ȣ ~ ���۹�ȣ
		int end = pageNo*pageCount;
		int start = end-(pageCount-1);
		map.put("start", start);
		map.put("end", end);
		
		List<Free_post> list = dao.selectFPAll(map);
		request.setAttribute("list", list);
		if(totalPage>0) {
			request.setAttribute("totalPage", totalPage);
		}else {			
			request.setAttribute("totalPage", 1);
		}
		System.out.println(list);
		
		return mapping.findForward(forwardName);
	}
}
