<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--contentReply.jsp --%>

<table id="commentTable" class="table table-condensed">
	<!-- 댓글 예시 -->
	<tr id="r1" name="commentParentCode">
		<td colspan=2><strong id="replyId">홍길동</strong>&nbsp;&nbsp;<a style="cursor: pointer;" name="delReply"><font color="red">삭제</font></a>
			<p>여기는 댓글 내용입니다.</p></td>
	</tr>

</table>
<table class="table table-condensed" id='reply'>
	<tr>
		<td><span class="form-inline" role="form"> <textarea
					id="commentParentText" class="form-control col-lg-12"
					style="width: 100%" rows="4"></textarea>
		</span>
			<div class="input-group-btn" style="float: right;">
				 <input type="button"
					value="댓글등록" id="submitReply">
					<input type="button" value="목록">
			</div></td>

	</tr>
</table>