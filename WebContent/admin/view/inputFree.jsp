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
				
			}
		});
	});
});
</script>
</head>
<body>
<%-- freeSell.jsp: 자유 게시물 입력 화면 --%>
inputFree.jsp
<input type="hidden" id="action" value="insert_freepost">
<input type="hidden" id="id" value=<%=session.getAttribute("login_id")%> >
	<input type="text" id="title" name="title" placeholder="제목을 입력하세요" required>
	<select id="category" name="category">
		<option>선택</option>
		<option>java</option>
		<option>DB</option>
		<option>javascript</option>
		<option>jsp</option>
		<option>jQuery</option>
	</select>
	<input type="button" id="post" value="발행">
	<input type="button" id="cancel" value="취소"><br>
	<textarea id="content" cols="100" rows="20" name="content" placeholder="내용을 입력하세요" required></textarea><br>
	<button id="admin"><a href="/docoding/admin.do">관리자 화면</a></button><br>
	<button id="admin"><a href="/docoding/input.do">판매 게시물 입력</a></button><br>
</body>
</html>