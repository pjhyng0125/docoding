<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   


<c:choose>
	<c:when test="${pageAction=='trans_profit1' }">
		{"msg":"${msg }","account":"${account }"}
	</c:when>
	<c:otherwise>
		${msg}
	</c:otherwise>

</c:choose>