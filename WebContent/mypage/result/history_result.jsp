<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${pageAction=='history' }">
	<table width="80%" align="center" border="1">
	<thead align="center">
		<tr>
			<th width="10%">게시글 번호</th>
			<th id="coulum_date" width="20%">작성 일자</th>
			<th>제목 및 내용</th>
			<th width="15%">작성자<!--  작성자/조회수/수익현황--></th>
			<th width="10%">조회수</th>
		</tr>
	</thead>
	<tbody width="80%" align="center">
	<c:forEach items="${list }" var="item">
		<tr>
			<td>${item.FP_NO}</td>
			<td>${item.FP_TIME}</td>
			<td>${item.FP_TITLE}</td>
			<td>${item.ID}</td>
			<td>${item.FP_COUNT}</td>
		</tr>	
	</c:forEach>
			
		<tr>
			<td colspan="5">
			<button id="prev">이전</button>
			<input type="hidden" id="max_page" value="${max_page }">
			<c:forEach  begin="1" end="${max_page }" var="i">
				<%-- [<a href="/docoding/mypage/buylist.do?page=${i}" class="p_process">${i }</a>]--%>
				<button name="bt${i }" class="p_process" value="${i }">[${i }]</button>
			</c:forEach>
			<button id="next">다음</button>
		</tr>
	</tbody>
	</table>
	</c:when>
	
	
	
	<c:when test="${pageAction=='history_reply' }">
	<table width="80%" align="center" border="1">
	<thead align="center">
		<tr>
			<th id="coulum_date" width="15%">게시물 작성 일자</th>
			<th>게시물 내용</th>
			<th width="11%">게시물 작성자</th>
			<th width="15%">댓글 작성 일자</th>
			<th>댓글 내용</th>
			<th width="11%">댓글 작성자</th>
		</tr>
	</thead>
	<tbody width="80%" align="center">
	<c:forEach items="${list }" var="item">
		<tr>
			<td>${item.FP_TIME}</td>
			<td>${item.FP_TITLE}</td>
			<td>${item.ID}</td>
			<td>${item.FR_TIME}</td>
			<td>${item.FR_CONTENT}</td>
			<td>${item.FR_ID}</td>
		</tr>	
	</c:forEach>
	
	</tbody>
	</table>
	</c:when>

</c:choose>