<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--sellList.jsp --%>
<%-- 게시물 사진, 글 제목, 간략한 내용, 작성자, 작성 시간, 조회수 --%>
<br>
<br>
<div id="list" class="col-sm-4 text-left">
	<h3><a href="/docoding/post/view/postList.do" id="category"><span>Java</span></a></h3>
	<br>
</div>
<nav class="navbar navbar-expand-sm ">
	<ul class="nav navbar-nav">
		<li class="nav-item" value="0"><a class="nav-link" href="/docoding/post/view/postList.do?action=list&order=0&page=${param.page }">조회순</a></li>
		<li class="nav-item" value="1"><a class="nav-link" href="/docoding/post/view/postList.do?action=list&order=1&page=${param.page }"
			value="dateup">날짜순</a></li>
	</ul>
	<hr>
</nav>
<div>
	<table class="table table-striped table-bordered table-hover"
		cellspacing="0">
		<thead>
			<tr>
				<th width="10%">카테고리</th>
				<th width="20%">제목</th>
				<th width="35%">줄거리</th>
				<th width="10%">작성자</th>
				<th width="15%">작성일</th>
				<th width="10%">조회수</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<c:forEach items="${list }" var="list">
				<tr>
					<td><img src="/docoding/image/${list.sp_filename }"
						class="img-fluid" alt=""></td>
					<td id="title" style="width: 20%">${list.sp_title}</td>
					<td>${list.sp_content }</td>
					<td id="searchId">${list.id}</td>
					<td>${list.sp_time}</td>
					<td>${list.sp_count}<input type="hidden" value="${list.sp_no }"></td>
				<tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="input-group-btn" style="float: right;">
		<input class="btn btn-primary" type="button" value="글쓰기"
			id="createPost">
	</div>

	<!-- Paging 처리 -->
	<ul class="pagination">
		<c:if test="${param.page ==1 || param.page=='' }">
		<li class="page-item"><a class="page-link">&laquo;</a></li>		
		</c:if>
		<c:if test="${param.page>1 }">
		<li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
		</c:if>
		<c:forEach begin="1" end="${totalPage }" var="i">
		<li class="page-item" value="${i }"><a class="page-link" href="/docoding/post/view/postList.do?action=list&order=${param.order }&page=${i }">${i}</a></li>
		</c:forEach>
		
		<c:choose>
		<c:when test="${param.page==totalPage}">
			<li class="page-item"><a class="page-link">&raquo;</a></li>	
		</c:when>
		<c:otherwise>		
			<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>	
		</c:otherwise>
		</c:choose>
	</ul>

	<div align="center">
		<div class="col-sm-4">
			<div class="input-group">
				<select>
					<option>아이디</option>
					<option>제목</option>
				</select> <input type="text" class="form-control" id='searchTxt'>
				<div class="input-group-append" name="searchBtn">
					<button class="btn btn-default" type="button">
						<i class="fab fa-searchengin"></i>검색
					</button>
				</div>
			</div>
		</div>
	</div>