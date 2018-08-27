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
		if(action ==null || action.equals("selectContent")) { // �Խñ� ���� ���̱�
			HttpSession session = request.getSession();
			String login_id = (String) session.getAttribute("login_id");
			System.out.println("�α��� id >>> "+login_id);
			String sp_id = sp_dao.selectSpId(Integer.parseInt(no));
			System.out.println("�Խ��� id >>> "+sp_id);
			map.put("sp_no", Integer.parseInt(no));
			
			if(login_id==null || !(login_id.equals(sp_id))) { //�Խ��ڰ� �ƴ� ���
				String sp_ip = request.getRemoteAddr(); //������ ���
				map.put("sp_ip", sp_ip);
				if(!ip_dao.selectSellIpChk(map)) {
					if(ip_dao.insertSellIp(map)) {
						System.out.println("��ȸ�� +1 ���� IP>>"+sp_ip);
						int cnt = ip_dao.selectSiCnt(Integer.parseInt(no));
						map.put("sp_count", cnt);
						sp_dao.updateSelectCnt(map);
					}
				}
			}else {
				request.setAttribute("upload", "upload");
			}
			map.put("bp_id", login_id);
			if(sp_dao.selectBuyPost(map)) {//���� ���� Ȯ��
				request.setAttribute("upload", "upload");
				System.out.println(login_id+">>������ Ȯ��!");
			}
			
			request.setAttribute("sell", sp_dao.select(Integer.parseInt(no)));
			forwardName = "content";
		}else if(action.equals("selectReply")) { //��� ���̱�
			request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			forwardName="sellReply";
		}else if(action.equals("insertReply")) { //��� �߰�
			String sr_id = request.getParameter("r_id");
			String sr_content = request.getParameter("r_content");

			Sell_reply sr = new Sell_reply(0, Integer.parseInt(no), null, sr_id, sr_content);
			System.out.println(sr);
			if(sr_dao.insertReply(sr)) {
				System.out.println("����Է� ����");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}
		}else if(action.equals("updateReply")) { // ��� ����
			String sr_no = request.getParameter("r_no");
			String sr_content = request.getParameter("r_content");
	
			map.put("sp_no", Integer.parseInt(no));
			map.put("sr_no", Integer.parseInt(sr_no));
			map.put("sr_content", sr_content);
			
			if(sr_dao.updateReply(map)) {
				System.out.println("��۾�����Ʈ ����");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}	
		}else if(action.equals("deleteReply")) { //��� ����
			String sr_no = request.getParameter("r_no");
			if(sr_dao.deleteReply(Integer.parseInt(sr_no))) {
				System.out.println("��ۻ��� ����");
				forwardName ="sellReply";
				request.setAttribute("sellReply",sr_dao.selectReply(Integer.parseInt(no)));
			}	
		}else if(action.equals("updateCash")) {//��ǰ ����
			String id = request.getParameter("login_id");
			System.out.println(id);
			int currentMoney = sp_dao.selectCash(id);
			if(currentMoney==-1) {
				System.out.println("selectCash>>>error!");
			}else if(currentMoney<200){
				out.print("lackOfCash"); //ĳ���� �����մϴ�!
			}else {
				map.put("sp_no", Integer.parseInt(no));
				map.put("bp_id", id);
				if(sp_dao.selectBuyPost(map)) {
					out.print("�̹� �����Ͻ� ��ǰ�Դϴ�!");
					return null;
				}
				
				if(sp_dao.updateCash(id)) {
					int afterMoney = sp_dao.selectCash(id);
					sp_dao.updateSoldCnt(Integer.parseInt(no));
					System.out.println("�Ǹ�Ƚ�� ����");
					Buy_post bp = new Buy_post(id, Integer.parseInt(no), null);

					if(sp_dao.insertBuyPost(bp)) System.out.println("���� ��� �Ϸ�");
					out.print("������ �Ϸ�Ǿ����ϴ�.\n���� �ܾ��� "+afterMoney+"�� �Դϴ�.");
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
