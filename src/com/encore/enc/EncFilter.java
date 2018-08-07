

package com.encore.enc;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncFilter  implements Filter{

	private String encType;
	
	@Override
	public void init(FilterConfig config) throws ServletException {		
		encType = config.getInitParameter("encType");
	}
	
	
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest req, 
			             ServletResponse resp, 
			             FilterChain chain)
			throws IOException, ServletException {
	  if(encType != null) {//web.xml에 encType이 정의되었다면
		  req.setCharacterEncoding(encType);
	  }else {
	   req.setCharacterEncoding("UTF-8");//기본값
	  }
	   chain.doFilter(req, resp);//다른 필터 혹은 요청페이지와의 연결 진행
	}//doFilter

    
}
