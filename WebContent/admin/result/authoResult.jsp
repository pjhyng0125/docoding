<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table width="100%">
	<tr>
		<th>아이디</th><th>계좌번호</th><th>인증 날짜</th><th>판매 게시물 개수</th>
	</tr>
	<c:forEach items="${list }" var="autho">
		<tr>
			<th>${autho.id }</th>
			<th>${autho.account_num }</th>
			<th>${autho.sa_time }</th>
			<th>${autho.sell_count }</th>
		</tr>
	</c:forEach>
</table>