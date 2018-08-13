<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#post').click(function(){
		$.ajax({
			url:"/Struts/action/admin.do",
			data:{action:"insert_sellpost",
				id:"pjhyng0125",
				category:$('#category').val(),
				content:$('#content').val(),
				filename:"represent.png",
				title:$('#title').val(),
			},
			success:function(data){
				alert(data);//입력 성공시: 게시물 입력 성공!!!
							//입력 실패시: 게시물 입력 실패...OTL
				$('#title').val('제목');
				$('#content').val('내용을 입력하세요');
				$('#category').val('선택');
			}
		});
	});
});
</script>

</head>
<body>
<%-- inputSell.jsp: 판매 게시물 입력 화면 --%>
<center>
<h3>판매 게시물 입력 화면</h3>
<input type="text" id="title" value="제목">
<select id="category">
	<option>선택</option>
	<option>java</option>
	<option>DB</option>
	<option>javascript</option>
	<option>jsp</option>
	<option>jQuery</option>
</select>
<input type="button" id="addpic" value="사진첨부">
<input type="button" id="post" value="발행">
<input type="button" id="cancel" value="취소">
<button id="admin"><a href="/Struts/view/admin.do">관리자 화면</a></button><br>
<textarea cols="100" rows="20" id="content">내용을 입력하세요</textarea>
</center>
</body>
</html>