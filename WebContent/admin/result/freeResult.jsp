<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table width="100%" border="3">
	<tr>
		<th>게시물 번호</th><th>카테고리</th><th>제목</th><th>내용</th><th>게시자 id</th><th>작성 시간</th><th>조회수</th>
	</tr>
	<c:forEach items="${list }" var="fp">
		<tr>
			<th>${fp.fp_no }</th>
			<th>${fp.fp_category }</th>
			<th>${fp.fp_title }</th>
			<th>${fp.fp_content }</th>
			<th>${fp.id }</th>
			<th>${fp.fp_time }</th>
			<th>${fp.fp_count }</th>
		</tr>
	</c:forEach>
</table>