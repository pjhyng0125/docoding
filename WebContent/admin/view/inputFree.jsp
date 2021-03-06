<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	*{
		text-align: center;	
		align-content: flex-start;
	}
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
var login_id = "${login_id}";
if(login_id==undefined || login_id==""){
	location.href = "/docoding/main.do";
	alert('로그인이 필요합니다!');
}

$(function(){
	
	$('#post').click(function(){
		//게시물 입력 + 파일 업로드
		$.ajax({
			url:"/docoding/action/admin.do",
			data:{
				action:$('#action').val(),
				id:$('#id').val(),
				category:$('#category').val(),
				content:$('#content').val(),
				title:$('#title').val()
			},
			success:function(data){
				alert(data);//입력 성공시: 게시물 입력 성공!!!
							//입력 실패시: 게시물 입력 실패...OTL
				$('#title').val('');
				$('#content').val('');
				$('#category').val('선택');
				
				location.href="/docoding/post/freeList.do?postName=free";
			}
		});
	});
	$('#cancel').click(function(){
		location.href="/docoding/post/freeList.do?postName=free";
	});
});
</script>
</head>
<body>
<%-- freeSell.jsp: 자유 게시물 입력 화면 --%>
<br><br>
<div class="container text-center">
<div class="row">
<div class="col-md-8 " style="float: none; margin: 0 auto;">
<input type="hidden" id="action" value="insert_freepost">
<input type="hidden" id="id" value=<%=session.getAttribute("login_id")%> >
<div class="float-left"><font size="5">&nbsp;&nbsp;자유게시판</font></div>
<div class="form-inline float-right">
	<input type="text" id="title" name="title" size="35" placeholder="제목을 입력하세요" required>
	&nbsp;&nbsp;
	<select id="category" name="category">
		<option>선택</option>
		<option>Java</option>
		<option>DB</option>
		<option>Javascript</option>
		<option>JSP</option>
		<option>jQuery</option>
	</select>
	&nbsp;&nbsp;
	<input class="btn btn-default" type="button" id="post" value="등록">&nbsp;&nbsp;
	<input class="btn btn-default" type="button" id="cancel" value="취소">&nbsp;&nbsp;</div>
	<textarea id="content" cols="100" rows="20" name="content" placeholder="내용을 입력하세요" required></textarea><br>
	<!-- <button id="admin"><a href="/docoding/admin.do">관리자 화면</a></button><br>
	<button id="admin"><a href="/docoding/input.do">판매 게시물 입력</a></button><br> -->
	</div>
	</div>
	</div>
</body>
</html>