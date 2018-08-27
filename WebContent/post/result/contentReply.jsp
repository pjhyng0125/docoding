<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--contentReply.jsp --%>

<table id="commentTable" class="table table-condensed">
	<c:choose>
		<c:when test="${sellReply!=null }">
			<c:forEach items="${sellReply }" var="reply" >
				<tr name="commentParent" class="${reply.sr_id }">
					<td colspan=2><strong>${reply.sr_id }</strong>&nbsp;&nbsp;
					<a style="cursor: pointer; display: none;" name="upReply"><font color="blue">수정</font></a>
					<a style="cursor: pointer; display: none;" name="delReply"><font color="red">삭제</font></a>
					<label class="font-weight-light font-italic">${reply.sr_time }</label>
					<input type="hidden" value="${reply.sr_no }">
					<div class="contentDiv">${reply.sr_content }</div></td>
				</tr>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<c:forEach items="${freeReply }" var="reply">
				<tr name="commentParent" class="${reply.fr_id }">
					<td colspan=2><strong id="replyId">${reply.fr_id }</strong>&nbsp;&nbsp;
					<a style="cursor: pointer; display: none;" name="upReply" ><font color="blue">수정</font></a>
					<a style="cursor: pointer; display: none;" name="delReply" ><font color="red">삭제</font></a>
						<label class="font-weight-light font-italic">${reply.fr_time }</label>
						<input type="hidden" value="${reply.fr_no }">
						<div class="contentDiv">${reply.fr_content }</div></td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>

</table>
<div id='replyTableDiv'>
<table class="table table-condensed" id='replyTable'>
	<tr>
		<td><span class="form-inline" role="form"> <textarea
					id="r_reply" class="form-control col-lg-12" style="width: 100%"
					rows="4"></textarea>
		</span></td>
	</tr>
</table>
</div>
<div class="input-group-btn" style="float: right;">
	<input class="btn btn-default" type="button" value="댓글등록"
		id="submitReply"> <input class="btn btn-default"
		type="button" value="목록">
</div>


