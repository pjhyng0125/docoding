<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--freeList.jsp --%>
	<br><br>	
		<div id="list" class="col-sm-4 text-left">
			<h4>자유 게시판 [${list.size() }]</h4>
			<br>
		</div>
	<nav class="navbar navbar-expand-sm ">
		<ul class="nav navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">조회순</a></li>
			<li class="nav-item"><a class="nav-link" href="#">날짜순</a></li>
		</ul>
		<hr>
	</nav>
	<div>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th width="15%">카테고리</th>
						<th width="50%">제목</th>
						<th width="10%">작성자</th>
						<th width="15%">작성일</th>
						<th width="10%">조회수</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${list }" var="list">
					<tr>
						<td>${list.fp_category }</td>
						<td id="title" style="width: 50%">${list.fp_title }</td>
						<td>${list.id }</td>
						<td>${list.fp_time }</td>
						<td>${list.fp_count }</td>
					<tr>
				</c:forEach>
				</tbody>
			</table>

			<!-- Paging 처리 -->
			<div id="paging">
					<ul class="pagination">
					  <li><a href="#">&laquo;</a></li>
					  <li><a href="#">1</a></li>
					  <li><a href="#">2</a></li>
					  <li><a href="#">3</a></li>
					  <li><a href="#">&raquo;</a></li>
					</ul>

					<div class="container">
						<div class="col-sm-6">


							<div class="input-group">
								<select>
									<option>아이디</option>
									<option>제목</option>
								</select> <input type="text" class="form-control">
								<div class="input-group-append">
									<button class="btn btn-default" type="submit">
										<i class="fab fa-searchengin"></i>검색
									</button>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>