<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>freeContent</title>
<script type="text/javascript" src="/docoding/js/jquery-3.3.1.min.js"></script>
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
		var postName = "${param.postName}"
		var order = ${param.order}
		var page = ${param.page}
		var option = "${param.option}"
		var url;
		var no = "${param.no}";
		urlToResultContent();

		$.ajax({
			url : url,
			success : function(result) {
				$('#replyDiv').html(result);
			},
			data : {
				action : "selectReply",
				no : no

			},
			error : function(xhr, status, error) {
				alert('서버에러!!');
				alert('상태: ' + xhr.status + ', 상태text: ' + xhr.statusText
						+ '\nstatus: ' + status + '\nerror: ' + error)
			}//에러 콜백
		})

		$('#replyDiv').on('click','input[value=목록]', function() {
					urlToList();
					if (option) {
						var searchTxt = "${param.searchTxt}";
						location.href = url + "?postName=" + postName
								+ "&action=search&order=" + order + "&page="
								+ page + "&option=" + option + "&searchTxt="
								+ searchTxt
					} else {
						location.href = url + "?postName=" + postName
								+ "&action=list&order=" + order + "&page="
								+ page
					}
				})

		// id, no, content 넘기기 insertReply
		$('#replyDiv').on('click', 'input[value=댓글등록]', function() {
			if (confirm('댓글을 등록하시겠습니까?')) {
				urlToResultContent();
				$.ajax({
					url : url,
					success : function(result) {
						$('#replyDiv').html(result);
					},
					data : {
						action : "insertReply",
						r_id : "길라임",
						no : no,
						r_content : $('textarea').val()
					}
				})
			}
		})
		//댓글 수정###############################################
		$('#replyDiv').on('click', 'a[name=upReply]', function() {
			//****로그인한 아이디가 같은지 체크
			var aTag = $(this);
			aTag.hide(); aTag.next().hide(); //수정삭제 버튼 숨기기
			var up_reply = $('#up_reply');
			var content = $('#contentDiv').text();
			$('#contentDiv').html('');
			var contentDiv = aTag.parent().find('.contentDiv');
			contentDiv.append(up_reply);
			up_reply.show(1000);
			
			//댓글 수정 취소############################################
			$('#cancleUpdate').click(function(){
				aTag.show();
				aTag.next().show(); //수정 삭제 버튼 보이기
				$('#up_replyDiv').append(up_reply);	
				up_reply.hide();
				$('#contentDiv').html('');
				$('#contentDiv').text(content);
			});
			
			return;
			var hidden = $(this).parent().find(':hidden').val();
			alert(hidden);
				urlToResultContent();
				$.ajax({
					url : url,
					success : function(result) {
						$('#replyDiv').html(result);
					},
					data : {
						action : "updateReply",
						no : no,
						r_no : hidden
					}
				})
		})
		
		//댓글 삭제###############################################
		$('#replyDiv').on('click', 'a[name=delReply]', function() {
			//****로그인한 아이디가 같은지 체크
			var hidden = $(this).next().val();
			if (confirm('정말로 삭제하시겠습니까?')) {
				urlToResultContent();
				$.ajax({
					url : url,
					success : function(result) {
						$('#replyDiv').html(result);
					},
					data : {
						action : "deleteReply",
						no : no,
						r_no : hidden
					}
				})
			}
		})
		
		
		
		//판매게시물 첨부파일 구매
		$('#buyTr').on('click', 'input[value=구매하기]', function() {
			alert('hi');
			if (confirm('정말로 구매하시겠습니까?')) {
			}
		})

		function urlToResultContent() {
			if (postName == "free") {
				url = "/docoding/post/result/freeContent.do"
			} else {
				url = "/docoding/post/result/sellContent.do"
			}
		}

		function urlToList() {
			if (postName == "free") {
				url = "/docoding/post/freeList.do"
			} else {
				url = "/docoding/post/sellList.do"
			}
		}
	})
</script>

<style type="text/css">
#commentTable label{
 float: right;
}
</style>
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
							<th width="10%">${sell.sp_category }${free.fp_category }관련</th>
							<th width="60%">${sell.sp_title }${free.fp_title }</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>작성일</td>
							<td>${sell.sp_time }${free.fp_time }</td>
						</tr>
						<tr>
							<td>글쓴이</td>
							<td>${sell.id }${free.id }<span style='float: right'>조회 :
									${sell.sp_count }${free.fp_count }</span>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<p>${sell.sp_content }${free.fp_content }</p>
							</td>
						</tr>
						<tr id="buyTr">
							<td colspan="2"><div class="input-group-btn"
									style="float: right;">
									<input class="btn btn-default" type="button" value="구매하기">
								</div></td>
						</tr>
					</tbody>
				</table>
				<div id='replyDiv'></div>
				</div></div></div>
				
<div id="up_replyDiv">
<div id="up_reply" style="width: 100%; display: none; border-color: skyblue">				
<textarea class="form-control col-lg-12"  rows="4"></textarea>
<div class="input-group-btn" style="float: right;">
	<input class="btn btn-default" type="button" value="수정"
		id="submitUpdate"> <input class="btn btn-default"
		type="button" value="취소" id="cancleUpdate">
</div>
</div>
</div>				
</body>
</html>