package com.encore.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.encore.dao.MemberDAO;

public class MemberAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		String id = request.getParameter("id");
		MemberDAO dao = MemberDAO.getInstance();
		
		boolean result = dao.duplicateIdCheck(id);
				PrintWriter out = response.getWriter();

				if(result)	out.println("0"); // 아이디 중복
				else		out.println("1");
				
				out.close();
				
				return null;
			}
		}