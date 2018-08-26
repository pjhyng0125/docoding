package com.encore.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.IpDAO;
import com.encore.dao.Sell_postDAO;
import com.encore.dao.Sell_replyDAO;
import com.encore.vo.Buy_post;
import com.encore.vo.Sell_reply;

public class SellContentAction extends Action{
	// post/result/postContent.do
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		Sell_postDAO sp_dao = new Sell_postDAO();
		Sell_replyDAO sr_dao = new Sell_replyDAO();
		IpDAO ip_dao = new IpDAO();
		Map<String, Object> map = new HashMap<>();
		String forwardName = null;
		String no = request.getParameter("no");
		
		System.out.println(no);
		if(action ==null || action.equals("selectContent")) { // 게시글 내용 보이기
			HttpSession session = request.getSession();
			String login_id = (String) session.getAttribute("login_id");
			System.out.println("로그인 id >>> "+login_id);
			String sp_id = sp_dao.selectSpId(Integer.parseInt(no));
			System.out.println("게시자 id >>> "+sp_id);
			map.put("sp_no", Integer.parseInt(no));
			
			if(login_id==null || !(login_id.equals(sp_id))) { //게시자가 아닐 경우
				String sp_ip = request.getRemoteAddr(); //아이피 얻기
				map.put("sp_ip", sp_ip);
				if(!ip_dao.selectSellIpChk(map)) {
					if(ip_dao.insertSellIp(map)) {
						System.out.println("조회수 +1 증가 IP>>"+sp_ip);
						int cnt = ip_dao.selectSiCnt(Integer.parseInt(no));
						map.put("sp_count", cnt);
						sp_dao.updateSelectCnt(map);
					}
				}
			}else {
				request.setAttribute("upload", "upload");
			}
			map.put("bp_id", login_id);
			if(sp_dao.selectBuyPost(map)) {//구매 여부 확인
				request.setAttribute("upload", "upload");
				System.out.println(login_id+">>구매자 확인!");
			}
			
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
			if(currentMoney==-1) {
				System.out.println("selectCash>>>error!");
			}else if(currentMoney<200){
				out.print("lackOfCash"); //캐쉬가 부족합니다!
			}else {
				map.put("sp_no", Integer.parseInt(no));
				map.put("bp_id", id);
				if(sp_dao.selectBuyPost(map)) {
					out.print("이미 구입하신 상품입니다!");
					return null;
				}
				
				if(sp_dao.updateCash(id)) {
					int afterMoney = sp_dao.selectCash(id);
					sp_dao.updateSoldCnt(Integer.parseInt(no));
					System.out.println("판매횟수 증가");
					Buy_post bp = new Buy_post(id, Integer.parseInt(no), null);

					if(sp_dao.insertBuyPost(bp)) System.out.println("구매 등록 완료");
					out.print("결제가 완료되었습니다.\n현재 잔액은 "+afterMoney+"원 입니다.");
				}else {
					System.out.println("updateCash>>>error!");
				}
			}
		}else if(action.equals("checkAssign")) {
			String id = request.getParameter("login_id");
				out.print(sp_dao.checkAssign(id));
		}

		
		return mapping.findForward(forwardName);
	}
}
