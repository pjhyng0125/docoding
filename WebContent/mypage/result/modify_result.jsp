<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<c:choose>
	<c:when test="${pageAction }">	<%-- 비밀번호 확인 --%>
		${pwd }
	</c:when>
	<%--
	<c:when test="">	<%-- 수정폼 전달 
	
	</c:when>
	
	<c:when test="">	<%-- 수정폼 전달 후 확인값 
	
	</c:when>
 --%>
</c:choose>
