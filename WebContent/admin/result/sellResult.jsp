<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table width="100%">
	<tr>
		<th>게시물 번호</th><th>카테고리</th><th>제목</th><th>내용</th><th>판매자 id</th><th>작성 시간</th><th>파일 이름</th><th>조회수</th>
	</tr>
	<c:forEach items="${list }" var="sp">
		<tr>
			<th>${sp.sp_no }</th>
			<th>${sp.sp_category }</th>
			<th>${sp.sp_title }</th>
			<th>${sp.sp_content }</th>
			<th>${sp.id }</th>
			<th>${sp.sp_time }</th>
			<th>${sp.sp_filename }</th>
			<th>${sp.sp_count }</th>
		</tr>
	</c:forEach>
</table>