package com.encore.action;

import java.util.HashMap;
import java.util.Map;

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
		String no = request.getParameter("no");
		System.out.println(no);
		if(action ==null || action.equals("selectContent")) { // °Ô½Ã±Û ³»¿ë º¸ÀÌ±â
			System.out.println(no);
			request.setAttribute("sell", sp_dao.select(Integer.parseInt(no)));
			forwardName = "content";
		}else if(action.equals("selectReply")) { //´ñ±Û º¸ÀÌ±â
			request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			forwardName="sellReply";
		}else if(action.equals("insertReply")) { //´ñ±Û Ãß°¡
			String sr_id = request.getParameter("r_id");
			String sr_content = request.getParameter("r_content");

			Sell_reply sr = new Sell_reply(0, Integer.parseInt(no), null, sr_id, sr_content);
			System.out.println(sr);
			if(sr_dao.insertReply(sr)) {
				System.out.println("´ñ±ÛÀÔ·Â ¼º°ø");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}
		}else if(action.equals("updateReply")) { // ´ñ±Û ¼öÁ¤
			String sr_no = request.getParameter("r_no");
			String sr_content = request.getParameter("r_content");
			
			Map<String, Object> map = new HashMap<>();
			map.put("sp_no", Integer.parseInt(no));
			map.put("sr_no", Integer.parseInt(sr_no));
			map.put("sr_content", sr_content);
			
			if(sr_dao.updateReply(map)) {
				System.out.println("´ñ±Û¾÷µ¥ÀÌÆ® ¼º°ø");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}	
		}else if(action.equals("deleteReply")) { //´ñ±Û »èÁ¦
			String sr_no = request.getParameter("r_no");
			if(sr_dao.deleteReply(Integer.parseInt(sr_no))) {
				System.out.println("´ñ±Û»èÁ¦ ¼º°ø");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}	
		}
		return mapping.findForward(forwardName);
	}
}
