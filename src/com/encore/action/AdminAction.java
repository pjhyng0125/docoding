package com.encore.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.MemberDAO;
import com.encore.dao.Sell_postDAO;
import com.encore.vo.Member_admin;
import com.encore.vo.Sell_post;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class AdminAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action=request.getParameter("action");
		ActionForward forward=null;
		Sell_postDAO sp_dao=new Sell_postDAO();
		MemberDAO m_dao=new MemberDAO();
		MultipartRequest mreq=null;
		
		if(action==null) {
			String savepath=request.getServletContext().getRealPath("/0814/upload");
			System.out.println(savepath);
			int maxSize=5*1024*1024;
			mreq = new MultipartRequest(request, savepath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
			System.out.println("파일 업로드 성공!");
			action=mreq.getParameter("action");
		}
		
		switch(action) {
		case "insert_sellpost":{
			Sell_post sp=new Sell_post();
			//0814 수정 파일명 set 시작
			sp.setSp_filename(mreq.getFilesystemName("upload"));
			//0814 수정 파일명 set 끝
			sp.setId("pjhyng0125");
			sp.setSp_category(mreq.getParameter("category"));
			sp.setSp_content(mreq.getParameter("content"));
			//sp.setSp_filename(request.getParameter("filename"));
			sp.setSp_title(mreq.getParameter("title"));
			if(sp_dao.insert_sellpost(sp)) {
				response.getWriter().print("success!!!");
			}else {
				response.getWriter().print("failed...OTL");				
			}
			forward=null;
			break;
		}
		case "select_sellpost":{
			ArrayList<Sell_post> list=(ArrayList<Sell_post>)sp_dao.select_sellpost();
			request.setAttribute("list", list);
			forward=mapping.findForward("sell");
			break;
		}
		case "select_admin":{
			ArrayList<Member_admin> list=(ArrayList<Member_admin>)m_dao.select_admin();
			request.setAttribute("list", list);
			forward=mapping.findForward("admininfo");
			break;
		}
		}//switch
	
		return forward;
	}
}

