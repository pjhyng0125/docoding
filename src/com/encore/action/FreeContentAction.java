package com.encore.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.Free_postDAO;
import com.encore.dao.Free_replyDAO;
import com.encore.vo.Free_reply;

public class FreeContentAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		Free_postDAO fp_dao = new Free_postDAO();
		Free_replyDAO fr_dao = new Free_replyDAO();
		String forwardName = null;
		if(action ==null || action.equals("selectContent")) {
			String no = request.getParameter("no");
			System.out.println(no);
			request.setAttribute("sell", fp_dao.select(Integer.parseInt(no)));
			forwardName = "content";
		}else if(action.equals("selectReply")) {
			String fp_no = request.getParameter("fp_no");
			request.setAttribute("reply",fr_dao.selectReply(Integer.parseInt(fp_no)));
			forwardName="reply";
		}else if(action.equals("insertReply")) {
			String fp_no = request.getParameter("fp_no");
			String fr_id = request.getParameter("fr_id");
			String fr_content = request.getParameter("fr_content");

			System.out.println("fp_no= "+ fp_no +", fr_id= "+fr_id+ ", fr_content = " + fr_content );
			Free_reply fr = new Free_reply(0, Integer.parseInt(fp_no), null, fr_id, fr_content);
			System.out.println(fr);
			if(fr_dao.insertReply(fr)) {
				System.out.println("댓글입력 성공");
				forwardName ="reply";
				request.setAttribute("reply",fr_dao.selectReply(Integer.parseInt(fp_no)));
			}
		}else if(action.equals("deleteReply")) {
			String fr_no = request.getParameter("fr_no");
			String fp_no = request.getParameter("fp_no");
			if(fr_dao.deleteReply(Integer.parseInt(fr_no))) {
				System.out.println("댓글삭제 성공");
				forwardName ="reply";
				request.setAttribute("reply",fr_dao.selectReply(Integer.parseInt(fp_no)));
			}	
		}
		return mapping.findForward(forwardName);
	}
}
