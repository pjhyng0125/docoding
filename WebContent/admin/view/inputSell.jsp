<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<script type="text/javascript">
$(function(){
	$('#post').click(function(){
		var form=$('form')[0];
		var formData=new FormData(form);
		//게시물 입력 + 파일 업로드
		$.ajax({
			url:"/docoding/action/admin.do?postName=${param.postName }",
			type:"POST",
			processData:false,
			contentType:false,
			data:formData, 
			success:function(data){
				alert(data);//입력 성공시: 게시물 입력 성공!!!
							//입력 실패시: 게시물 입력 실패...OTL
				$('#title').val('');
				$('#content').val('');
				$('#category').val('선택');
				
			//if($.browser.msie){
				//$('#upload').replaceWith($('#upload').clone(true));
			//}else{
				$('#upload').val('');
			//}
				location.href="/docoding/post/sellList.do?postName=${param.postName }";
			}
		});
	});
	
	$('#cancel').click(function(){
		location.href="/docoding/post/sellList.do?postName=${param.postName }";
	});
});
</script>

</head>
<body>
<%-- inputSell.jsp: 판매 게시물 입력 화면 --%>
<%--0814 수정 시작 --%>
<br><br>
	<div class="container text-center">
				<h3 class="font-weight-bold">판매 게시물 입력 화면</h3>
		<div class="row ">
			<div class="col-md-8 " style="float: none; margin: 0 auto;">
			<form enctype="multipart/form-data" method="post">
				<input type="hidden" name="action" value="insert_sellpost">
				<input type="hidden" name="id"
					value=<%=session.getAttribute("login_id")%>>
						<div class="float-left"><font id="category" size="5">&nbsp;&nbsp;${param.postName }</font></div>
			<div  class="form-inline float-right">
						<input type="text" id="title" name="title" placeholder="제목을 입력하세요"
					required> <input type="file" id="upload" name="upload"> 
						<input class="btn btn-default" type="button" id="post" value="등록">&nbsp;&nbsp; 
						<input class="btn btn-default" type="button" id="cancel" value="취소"><br></div>
				<textarea class="form-control col-md-12	" id="content" cols="100" rows="18" name="content"
					placeholder="내용을 입력하세요" required></textarea>
			</form>
			<div><br>
<!-- 			<a id="admin" class="btn btn-primary" href="/docoding/admin.do">관리자 화면</a><br><br>
			<a id="free" class="btn btn-primary" href="/docoding/inputfree.do">자유 게시판 입력</a> -->
			</div>
			</div>
		</div>
	</div>
	<%--0814 수정 끝 --%>

</body>
</html>