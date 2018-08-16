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
	$.ajax({
		url:"/docoding/action/admin.do",
		data:{action:"select_sellpost"},
		success:function(htmlTxt){
			$('#d1').html(htmlTxt);
		}
	});
});
</script>
</head>
<body>
<center>
<div id="d1"></div>
</center>
</body>
</html>

<!-- <table width="100%">
	<tr>
		<th>게시물 번호</th><th>카테고리</th><th>제목</th><th>판매자 id</th><th>내용</th><th>작성 시간</th><th>파일 이름</th><th>조회수</th>
	</tr>
</table> -->