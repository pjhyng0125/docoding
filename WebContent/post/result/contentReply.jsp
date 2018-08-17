<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--contentReply.jsp --%>

<table id="commentTable" class="table table-condensed">
	<!-- 댓글 예시 -->
	<tr>
		<td colspan=2><strong id="replyId">홍길동</strong>&nbsp;&nbsp;<a
			style="cursor: pointer;" name="delReply"><font color="red">삭제</font></a>
			<p>여기는 댓글 내용입니다.</p></td>
	</tr>
	<c:forEach items="${reply }" var="reply">
		<tr name="commentParent">
			<td colspan=2><strong id="replyId">${reply.sr_id }</strong>&nbsp;&nbsp;<a
				style="cursor: pointer;" id="delReply"><font color="red">삭제</font></a>
				<input type="hidden" value="${reply.sr_no }">
				<p>${reply.sr_content }</p></td>
		</tr>
	</c:forEach>
</table>
<table class="table table-condensed" id='replyTable'>
	<tr>
		<td><span class="form-inline" role="form"> <textarea
					id="sr_reply" class="form-control col-lg-12" style="width: 100%"
					rows="4"></textarea>
		</span></td>
	</tr>
</table>
<div class="input-group-btn" style="float: right;">
	<input class="btn btn-default" type="button" value="댓글등록"
		id="submitReply"> <input class="btn btn-default"
		type="button" value="목록">
</div>