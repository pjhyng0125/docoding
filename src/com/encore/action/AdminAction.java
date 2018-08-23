package com.encore.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.AuthoDAO;
import com.encore.dao.Free_postDAO;
import com.encore.dao.MemberDAO;
import com.encore.dao.Sell_postDAO;
import com.encore.vo.Free_post;
import com.encore.vo.Member_admin;
import com.encore.vo.Sell_assign;
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
		AuthoDAO au_dao=new AuthoDAO();
		Free_postDAO fp_dao=new Free_postDAO();
		MultipartRequest mreq=null;
		response.setContentType("text/html; charset=UTF-8");
		
		if(action==null) {
			String savepath=request.getServletContext().getRealPath("/upload");
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
			sp.setId(mreq.getParameter("id"));
			sp.setSp_category(request.getParameter("postName"));
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
		case "insert_freepost":{
			System.out.println("in insert freepost");
			Free_post fp=new Free_post();
			fp.setId(request.getParameter("id"));
			fp.setFp_category(request.getParameter("category"));
			fp.setFp_content(request.getParameter("content"));
			fp.setFp_title(request.getParameter("title"));
			if(fp_dao.insert_freepost(fp)) {
				response.getWriter().print("success!!!");
			}else {
				response.getWriter().print("failed...OTL");				
			}
			forward=null;
			break;
		}
		case "select_freepost":{
			ArrayList<Free_post> list=(ArrayList<Free_post>)fp_dao.select_freepost();
			request.setAttribute("list", list);
			forward=mapping.findForward("free");
			break;
		}
		case "select_admin":{
			ArrayList<Member_admin> list=(ArrayList<Member_admin>)m_dao.select_admin();
			request.setAttribute("list", list);
			forward=mapping.findForward("admininfo");
			break;
		}
		case "select_autho":{
			ArrayList<Sell_assign> list=(ArrayList<Sell_assign>)au_dao.select_autho();
			request.setAttribute("list", list);
			forward=mapping.findForward("authoinfo");
			break;
		}
		}//switch
	
		return forward;
	}
}

