<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<br>
<div id="title"><span id="title2">[ ${map.id } ]</span>님 회원 정보 <br><br> </div>
<div class="content">	
			보유 캐쉬 : ${map.cash } <br>
			가입 일자 : ${map.m_time }<br>
			판매자 등록 여부 :

<c:choose>
	<c:when test="${map.check=='true' }">등록 완료</c:when>	
	<c:otherwise>판매자 미등록</c:otherwise> 
</c:choose>
</div>