package com.encore.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

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
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getParameter("action");
		Free_postDAO fp_dao = new Free_postDAO();
		Free_replyDAO fr_dao = new Free_replyDAO();
		String forwardName = "freeReply";
		String no = request.getParameter("no");
		if(action ==null || action.equals("selectContent")) {
			System.out.println(no);
			request.setAttribute("free", fp_dao.select(Integer.parseInt(no)));
			forwardName = "content";
		}else if(action.equals("selectReply")) {
			request.setAttribute("freeReply",fr_dao.selectReply(Integer.parseInt(no)));
		}else if(action.equals("insertReply")) {
			String fr_id = request.getParameter("r_id");
			String fr_content = request.getParameter("r_content");

			Free_reply fr = new Free_reply(0, Integer.parseInt(no), null, fr_id, fr_content);
			System.out.println(fr);
			if(fr_dao.insertReply(fr)) {
				System.out.println("댓글입력 성공");
				request.setAttribute("freeReply",fr_dao.selectReply(Integer.parseInt(no)));
			}
		}else if(action.equals("updateReply")) { // 댓글 수정
			String fr_no = request.getParameter("r_no");
			String fr_content = request.getParameter("r_content");
			
			Map<String, Object> map = new HashMap<>();
			map.put("fp_no", Integer.parseInt(no));
			map.put("fr_no", Integer.parseInt(fr_no));
			map.put("fr_content", fr_content);
			
			if(fr_dao.updateReply(map)) {
				System.out.println("댓글업데이트 성공");
				request.setAttribute("freeReply",fr_dao.selectReply(Integer.parseInt(no)));
			}	
		}else if(action.equals("deleteReply")) {
			String fr_no = request.getParameter("r_no");
			String fp_no = request.getParameter("no");
			if(fr_dao.deleteReply(Integer.parseInt(fr_no))) {
				System.out.println("댓글삭제 성공");
				request.setAttribute("freeReply",fr_dao.selectReply(Integer.parseInt(fp_no)));
			}	
		}else if(action.equals("deletePost")) {
			PrintWriter out = response.getWriter();
			if(fp_dao.deletePost(Integer.parseInt(no))) {
				out.print("게시물이 삭제되었습니다!");
			}
			return null;
		}
		
		return mapping.findForward(forwardName);
	}
}
