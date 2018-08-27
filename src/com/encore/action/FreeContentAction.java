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

import com.encore.dao.Free_postDAO;
import com.encore.dao.Free_replyDAO;
import com.encore.dao.IpDAO;
import com.encore.vo.Free_reply;

public class FreeContentAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getParameter("action");
		Free_postDAO fp_dao = new Free_postDAO();
		Free_replyDAO fr_dao = new Free_replyDAO();
		IpDAO ip_dao = new IpDAO();
		Map<String, Object> map = new HashMap<>();
		String forwardName = "freeReply";
		String no = request.getParameter("no");
		
		if(action ==null || action.equals("selectContent")) {
			HttpSession session = request.getSession();
			String login_id = (String) session.getAttribute("login_id");
			System.out.println("�α��� id >>> "+login_id);
			String fp_id = fp_dao.selectFpId(Integer.parseInt(no));
			System.out.println("�Խ��� id >>> "+fp_id);
			map.put("fp_no", Integer.parseInt(no));
			
			if(login_id==null || !(login_id.equals(fp_id))) { //�Խ��ڰ� �ƴ� ���
				String fp_ip = request.getRemoteAddr(); //������ ���
				map.put("fp_ip", fp_ip);
				if(!ip_dao.selectFreeIpChk(map)) {
					if(ip_dao.insertFreeIp(map)) {
						System.out.println("��ȸ�� +1 ���� IP>>"+fp_ip);
						int cnt = ip_dao.selectFiCnt(Integer.parseInt(no));
						map.put("fp_count", cnt);
						fp_dao.updateSelectCnt(map);
					}
				}
			}
			map.put("bp_id", login_id);			
			
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
				System.out.println("����Է� ����");
				request.setAttribute("freeReply",fr_dao.selectReply(Integer.parseInt(no)));
			}
		}else if(action.equals("updateReply")) { // ��� ����
			String fr_no = request.getParameter("r_no");
			String fr_content = request.getParameter("r_content");
	
			map.put("fp_no", Integer.parseInt(no));
			map.put("fr_no", Integer.parseInt(fr_no));
			map.put("fr_content", fr_content);
			
			if(fr_dao.updateReply(map)) {
				System.out.println("��۾�����Ʈ ����");
				request.setAttribute("freeReply",fr_dao.selectReply(Integer.parseInt(no)));
			}	
		}else if(action.equals("deleteReply")) {//��� ����
			String fr_no = request.getParameter("r_no");
			String fp_no = request.getParameter("no");
			if(fr_dao.deleteReply(Integer.parseInt(fr_no))) {
				System.out.println("��ۻ��� ����");
				request.setAttribute("freeReply",fr_dao.selectReply(Integer.parseInt(fp_no)));
			}	
		}else if(action.equals("deletePost")) {//�Խù� ����
			PrintWriter out = response.getWriter();
			if(fp_dao.deletePost(Integer.parseInt(no))) {
				out.print("�Խù��� �����Ǿ����ϴ�!");
			}
			return null;
		}
		
		return mapping.findForward(forwardName);
	}
}
