<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>freeContent</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
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
$(function() {
		$.ajax({
			url : "/docoding/post/result/contentReply.jsp",
			success : function(result) {
				$('#replyDiv').html(result);
			},
			error : function(xhr, status, error) {
				alert('서버에러!!');
				alert('상태: ' + xhr.status + ', 상태text: ' + xhr.statusText
						+ '\nstatus: ' + status + '\nerror: ' + error)
			}//에러 콜백
		})
		
		$('#replyDiv').on('click','input[value=목록]',function(){
			var order = ${param.order}
			var page = ${param.page}
			location.href = '/docoding/post/view/postList.do?action=list&order='+order+'&page='+page			
		})
		
		$('#replyDiv').on('click','input[value=댓글등록]',function(){
			
		})

	}) 
</script>
</head>
<%--postContent.jsp --%>
<body>
	<div class="container">
		<hr />
		<div class="row">
			<div class="col-md-10">
				<table class="table table-condensed">
					<thead>
						<tr align="center">
							<th width="10%">${sell.sp_category }</th>
							<th width="60%">${sell.sp_title }</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>작성일</td>
							<td>${sell.sp_time }</td>
						</tr>
						<tr>
							<td>글쓴이</td>
							<td>${sell.id } <span style='float: right'>조회 : ${sell.sp_count }</span>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<p>${sell.sp_content }</p>
							</td>
						</tr>
					</tbody>
				</table>
				<div id='replyDiv'></div>
</body>
</html>