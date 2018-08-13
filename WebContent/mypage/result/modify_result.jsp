<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<c:choose>
	<c:when test="${pageAction=='m_search_pwd' }">	<%-- 비밀번호 확인 / ''을통해 string 구별 --%>
		 {"pwd":"${pwd}","id":"${member.id }","pwd":"${member.pass }",
		 "name":"${member.name }","birth":"${member.birth}",
	 	 "email":"${member.email }","phone":"${member.phone}"} 
		<%-- ${pwd}--%>
	</c:when>

	<c:when test="${pageAction=='m_modify_form' }">	<%-- 수정폼 전달후 확인  --%>
		${result }
	</c:when>
	
	
</c:choose>
