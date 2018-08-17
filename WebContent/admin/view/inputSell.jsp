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
		var form=$('form')[0];
		var formData=new FormData(form);
		//게시물 입력 + 파일 업로드
		$.ajax({
			url:"/docoding/action/admin.do",
			type:"POST",
			processData:false,
			contentType:false,
			data:formData,
			success:function(data){
				alert(data);//입력 성공시: 게시물 입력 성공!!!
							//입력 실패시: 게시물 입력 실패...OTL
				$('#title').val('제목');
				$('#content').val('내용을 입력하세요');
				$('#category').val('선택');
				
			if($.browser.msie){
				$('#upload').replaceWith($('#upload').clone(true));
			}else{
				$('#upload').val('');
			}
			}
		});
	});
});
</script>

</head>
<body>
<%-- inputSell.jsp: 판매 게시물 입력 화면 --%>
<h3>판매 게시물 입력 화면</h3>
<%--0814 수정 시작 --%>
<form enctype="multipart/form-data" method="post">
	<input type="hidden" name="action" value="insert_sellpost">
	<input type="text" id="title" name="title" placeholder="제목을 입력하세요" required>
	<select id="category" name="category">
		<option>선택</option>
		<option>java</option>
		<option>DB</option>
		<option>javascript</option>
		<option>jsp</option>
		<option>jQuery</option>
	</select>
	<input type="file" id="upload" name="upload">
	<input type="button" id="post" value="발행">
	<input type="button" id="cancel" value="취소"><br>
	<textarea id="content" cols="100" rows="20" name="content" placeholder="내용을 입력하세요" required></textarea>
</form>
<%--0814 수정 끝 --%>
<button id="admin"><a href="/docoding/admin.do">관리자 화면</a></button><br>
<button id="free"><a href="/docoding/inputfree.do">자유 게시판 입력</a></button>
</body>
</html>