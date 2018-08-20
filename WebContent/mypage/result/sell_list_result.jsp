<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${pageAction=='mysell' }">
	<table width="80%" align="center" border="1">
	<thead align="center">
		<tr>
			<th id="coulum_date" width="20%">게시 일자</th>
			<th>제목 및 내용</th>
			<th width="10%">구매 횟수</th>
			<th width="10%">조회수<!--  작성자/조회수/수익현황--></th>
			<th width="15%">비고</th>
		</tr>
	</thead>
	<tbody width="80%" align="center">
	<c:forEach items="${list }" var="item">
		<tr>
			<td>${item.SP_TIME}</td>
			<td>${item.SP_TITLE}</td>
			<td>${item.SOLD_COUNT}</td>
			<td>${item.SP_COUNT}</td>
			<td><button class="del_bt" value="${item.SP_NO}">삭제</button></td>
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
</c:choose>