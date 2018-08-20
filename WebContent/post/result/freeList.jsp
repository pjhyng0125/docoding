<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--freeList.jsp --%>
<br>
<br>
<div id="list" class="col-sm-4 text-left">
	<h3>
		<a href="/docoding/post/freeList.do" id="category"><span>자유게시판</span></a>
	</h3>
	<br>
</div>
<nav class="navbar navbar-expand-sm " id="orderNav">
	<ul class="nav navbar-nav">
		<li class="nav-item" value="0"><c:if
				test='${param.action.equals("search") }'>
				<a class="nav-link"
					href="/docoding/post/freeList.do?postName=${param.postName }&action=${param.action }
			&order=0&page=${i }&option=${param.option }&searchTxt=${param.searchTxt}">조회순</a>
			</c:if> <c:if test='${param.action.equals("list") }'>
				<a class="nav-link"
					href="/docoding/post/freeList.do?postName=${param.postName }&action=${param.action }&order=0&page=${param.page }">조회순</a>
			</c:if></li>
		<li class="nav-item" value="0"><c:if
				test='${param.action.equals("search") }'>
				<a class="nav-link"
					href="/docoding/post/freeList.do?postName=${param.postName }&action=${param.action }
			&order=1&page=${i }&option=${param.option }&searchTxt=${param.searchTxt}">날짜순</a>
			</c:if> <c:if test='${param.action.equals("list") }'>
				<a class="nav-link"
					href="/docoding/post/freeList.do?postName=${param.postName }&action=${param.action }&order=1&page=${param.page }">날짜순</a>
			</c:if></li>
	</ul>
	<hr>
</nav>
<div>
	<table class="table table-striped table-bordered table-hover"
		cellspacing="0">
		<thead>
			<tr>
				<th width="15%">카테고리</th>
				<th width="50%">제목</th>
				<th width="10%">작성자</th>
				<th width="15%">작성일</th>
				<th width="10%">조회수</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<c:forEach items="${list }" var="list">
				<tr>
					<td>${list.fp_category }</td>
					<td id="title" style="width: 50%">${list.fp_title }</td>
					<td>${list.id }</td>
					<td>${list.fp_time }</td>
					<td>${list.fp_count }<input type="hidden"
						value="${list.fp_no }"></td>
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
			<c:if test='${param.action.equals("search") }'>
				<li class="page-item" value="${i }"><a class="page-link"
					href="/docoding/post/freeList.do?postName=${param.postName }&action=${param.action }&order=${param.order }&page=${i }&option=${param.option}&searchTxt=${param.searchTxt}">${i}</a></li>
			</c:if>
			<c:if test='${param.action.equals("list") }'>
				<li class="page-item" value="${i }"><a class="page-link"
					href="/docoding/post/freeList.do?postName=${param.postName }&action=${param.action }&order=${param.order }&page=${i }">${i}</a></li>
			</c:if>
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
					<option value="searchId">아이디</option>
					<option value="searchTitle">제목</option>
				</select> <input type="text" class="form-control" id='searchTxt'>
				<div class="input-group-append" name="searchBtn">
					<button class="btn btn-default" type="button">
						<i class="fab fa-searchengin"></i>검색
					</button>
				</div>
			</div>
		</div>
	</div>