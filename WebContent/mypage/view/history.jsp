<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/docoding/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function(){
		
		var pageAction;
		var page = "${param.page}";
		if(page==""){
			page=1;
		}
		var max_page='';
		
		$('#history').click(function(){
			pageAction = "history";
			$('#basic').hide();
			$('#list').show();
			$('#title').html('자유게시판 작성 현황');
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":pageAction,"id":$('#get_id').attr("value"),"page":page},
					success:function(result){
			
						$('#add_list').html(result);	
						max_page=$('#max_page').val();
					},
					error:function(xhr){
						alert(xhr.status+":"+xhr.statusText);
					}
			});	// ajax 
		});	// buylist
		
		$('#add_list').on('click','.p_process',function(){
			
			page = $(this).attr('value');
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":pageAction,"id":$('#get_id').attr("value"),"page":page},
					success:function(result){
						$('#add_list').html(result);		
					}	
			});
		});	// 숫자 클릭 페이지 이동
		
		$('#add_list').on('click','#prev',function(){
			
			page = page-1;
			if(page>0){
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":pageAction,"id":$('#get_id').attr("value"),"page":page},
					success:function(result){
						$('#add_list').html(result);		
					}	
			});
			}else{
				alert('가장 첫 페이지 입니다.')
				page = parseInt(page)+1;
			}
		});	// 이전페이지로 이동
		
		$('#add_list').on('click','#next',function(){
			
			page = parseInt(page)+1;
			if(page<=max_page){
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":pageAction,"id":$('#get_id').attr("value"),"page":page},
					success:function(result){
						$('#add_list').html(result);		
					}	
			});
			}else{
				alert('마지막 페이지 입니다.');
				page=page-1;
			}
		});	// 다음페이지로 이동
		$('#history_reply').click(function(){
			pageAction = "history_reply";
			$('#basic').hide();
			$('#list').show();
			$('#title').html('댓글 기록');
			$.ajax({
				url:'/docoding/mypageAction.do',
				data:{"pageAction":pageAction,"id":$('#get_id').val(),"page":page},
				success:function(result){
					
					$('#add_list').html(result);	
					max_page=$('#max_page').val();
				}
			});	// ajax
		});	// bookmark
		
	});
</script>
</head>
<body>
<input type="hidden" id="get_id" value="${login_id}">
<input type="hidden" id="login_flag">
<center>
<div>
<br>
<h4>게시물 관리 페이지</h4>
<a id="history"><font size="4">자유게시판 게시물</font></a> <font size="4">  |  </font> 
<a id="history_reply"><font size="4">댓글 작성기록</font></a>
<hr width="30%">
</div>

<div id="basic" style="display: ">
	열람하고자 하는 게시물 사항을 눌러주세요.
</div>

<div id="list" style="display: none;">
<font size="5"><div id="title"></div></font>
<hr width="80%">
<div id="add_list">

</div>
</div>	
</center>
</body>
</html>