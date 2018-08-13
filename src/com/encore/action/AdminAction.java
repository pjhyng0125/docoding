package com.encore.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.Sell_postDAO;
import com.encore.vo.Sell_post;


public class AdminAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action=(String)request.getParameter("action");
		ActionForward forward=null;
		Sell_postDAO sp_dao=new Sell_postDAO();
		
		switch(action) {
		case "insert_sellpost":
			Sell_post sp=new Sell_post();
			sp.setId(request.getParameter("id"));
			sp.setSp_category(request.getParameter("category"));
			sp.setSp_content(request.getParameter("content"));
			sp.setSp_filename(request.getParameter("filename"));
			sp.setSp_title(request.getParameter("title"));
			if(sp_dao.insert_sellpost(sp)) {
				response.getWriter().print("success!!!");
			}else {
				response.getWriter().print("failed...OTL");				
			}
			forward=null;
			break;
		case "select_sellpost":
			ArrayList<Sell_post> list=(ArrayList<Sell_post>)sp_dao.select_sellpost();
			request.setAttribute("list", list);
			forward=mapping.findForward("sell");
		}
	
		return forward;
	}
}

