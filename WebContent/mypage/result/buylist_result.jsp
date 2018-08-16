<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${pageAction=='sel_buylist' }">
	<table width="80%" align="center" border="1">
	<thead align="center">
		<tr>
			<th id="coulum_date" width="20%">구매 일자</th>
			<th width="10%">카테고리</th>
			<th>제목 및 내용</th>
			<th width="17%">작성자<!--  작성자/조회수/수익현황--></th>
			<th width="10%">조회수</th>
		</tr>
	</thead>
	<tbody width="80%" align="center">
	<c:forEach items="${list }" var="item">
		<tr>
			<td>${item.BP_TIME}</td>
			<td>${item.SP_CATEGORY}</td>
			<td>${item.SP_TITLE}</td>
			<td>${item.ID}</td>
			<td>${item.SP_COUNT}</td>
		</tr>	
	</c:forEach>
	</tbody>
	</table>
	</c:when>
	<c:when test="${pageAction=='sel_bookmark' }">
	<table width="80%" align="center" border="1">
	<thead align="center">
		<tr>
			<th id="coulum_date" width="20%">게시 일자</th>
			<th width="10%">카테고리</th>
			<th>제목 및 내용</th>
			<th width="17%">작성자<!--  작성자/조회수/수익현황--></th>
			<th width="10%">조회수</th>
		</tr>
	</thead>
	<tbody width="80%" align="center">
	<c:forEach items="${list }" var="item">
		<tr>
			<td>${item.bp_time}</td>
			<td>${item.sp_category}</td>
			<td>${item.sp_title}</td>
			<td>${item.sp_id}</td>
			<td>${item.sp_count}</td>
		</tr>	
	</c:forEach>
	</tbody>
	</table>
	</c:when>

</c:choose>

