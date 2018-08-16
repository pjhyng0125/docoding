<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table width="100%">
	<tr>
		<th>아이디</th><th>이름</th><th>성별</th><th>생년월일</th><th>이메일</th><th>폰</th><th>가입날짜</th><th>로그인 상태</th><th>판매자 인증</th>
	</tr>
	<c:forEach items="${list }" var="mem">
		<tr>
			<th>${mem.id }</th>
			<th>${mem.name }</th>
			<th>${mem.gender }</th>
			<th>${mem.birth }</th>
			<th>${mem.email }</th>
			<th>${mem.phone }</th>
			<th>${mem.m_time }</th>
			<th>${mem.login_flag }</th>
			<th>${mem.autho }</th>
		</tr>
	</c:forEach>
</table>
