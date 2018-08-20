package com.encore.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.Sell_postDAO;
import com.encore.dao.Sell_replyDAO;
import com.encore.vo.Sell_reply;

public class SellContentAction extends Action{
	// post/result/postContent.do
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		Sell_postDAO sp_dao = new Sell_postDAO();
		Sell_replyDAO sr_dao = new Sell_replyDAO();
		String forwardName = null;
		if(action ==null || action.equals("selectContent")) {
			String no = request.getParameter("no");
			System.out.println(no);
			request.setAttribute("sell", sp_dao.select(Integer.parseInt(no)));
			forwardName = "content";
		}else if(action.equals("selectReply")) {
			String sp_no = request.getParameter("sp_no");
			request.setAttribute("reply",sr_dao.selectReply(Integer.parseInt(sp_no)));
			forwardName="reply";
		}else if(action.equals("insertReply")) {
			String sp_no = request.getParameter("sp_no");
			String sr_id = request.getParameter("sr_id");
			String sr_content = request.getParameter("sr_content");

			System.out.println("sp_no= "+ sp_no +", sr_id= "+sr_id+ ", sr_content = " + sr_content );
			Sell_reply sr = new Sell_reply(0, Integer.parseInt(sp_no), null, sr_id, sr_content);
			System.out.println(sr);
			if(sr_dao.insertReply(sr)) {
				System.out.println("댓글입력 성공");
				forwardName ="reply";
				request.setAttribute("reply",sr_dao.selectReply(Integer.parseInt(sp_no)));
			}
		}else if(action.equals("deleteReply")) {
			String sr_no = request.getParameter("sr_no");
			String sp_no = request.getParameter("sp_no");
			if(sr_dao.deleteReply(Integer.parseInt(sr_no))) {
				System.out.println("댓글삭제 성공");
				forwardName ="reply";
				request.setAttribute("reply",sr_dao.selectReply(Integer.parseInt(sp_no)));
			}	
		}
		return mapping.findForward(forwardName);
	}
}
