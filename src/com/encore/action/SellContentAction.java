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
		response.setContentType("text/html;charset=UTF-8");
		if(action ==null || action.equals("selectContent")) { // 게시글 내용 보이기
			System.out.println(no);
			request.setAttribute("sell", sp_dao.select(Integer.parseInt(no)));
			forwardName = "content";
		}else if(action.equals("selectReply")) { //댓글 보이기
			request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			forwardName="sellReply";
		}else if(action.equals("insertReply")) { //댓글 추가
			String sr_id = request.getParameter("r_id");
			String sr_content = request.getParameter("r_content");

			Sell_reply sr = new Sell_reply(0, Integer.parseInt(no), null, sr_id, sr_content);
			System.out.println(sr);
			if(sr_dao.insertReply(sr)) {
				System.out.println("댓글입력 성공");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}
		}else if(action.equals("updateReply")) { // 댓글 수정
			String sr_no = request.getParameter("r_no");
			String sr_content = request.getParameter("r_content");
			
			Map<String, Object> map = new HashMap<>();
			map.put("sp_no", Integer.parseInt(no));
			map.put("sr_no", Integer.parseInt(sr_no));
			map.put("sr_content", sr_content);
			
			if(sr_dao.updateReply(map)) {
				System.out.println("댓글업데이트 성공");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}	
		}else if(action.equals("deleteReply")) { //댓글 삭제
			String sr_no = request.getParameter("r_no");
			if(sr_dao.deleteReply(Integer.parseInt(sr_no))) {
				System.out.println("댓글삭제 성공");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}	
		}else if(action.equals("updateCash")) {//상품 구입
			String id = request.getParameter("login_id");
			System.out.println(id);
			int currentMoney = sp_dao.selectCash(id);
			PrintWriter out = response.getWriter();
			if(currentMoney==-1) {
				System.out.println("selectCash>>>error!");
			}else if(currentMoney<200){
				out.print("캐쉬가 부족합니다!");
			}else {
				if(sp_dao.updateCash(id)) {
					int afterMoney = sp_dao.selectCash(id);
					sp_dao.updateSoldCnt(Integer.parseInt(no));
					System.out.println("판매횟수 증가");
					out.print("결제가 완료되었습니다.\n현재 잔액은 "+afterMoney+"원 입니다.");
				}else {					
					System.out.println("updateCash>>>error!");
				}
			}
		}
		return mapping.findForward(forwardName);
	}
}
