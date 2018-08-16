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
		$('#sel_buylist').click(function(){
			pageAction = "sel_buylist";
			$('#basic').hide();
			$('#list').show();
			$('#title').html('구매 자료 현황');
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":pageAction,"id":$('#id_get').val()},
					success:function(result){
						$('#add_list').html(result);		
					},
					error:function(xhr){
						alert(xhr.status+":"+xhr.statusText);
					}
			});
			
		});	// buylist
		
		$('#sel_bookmark').click(function(){
			pageAction = "sel_bookmark";
			$('#basic').hide();
			$('#list').show();
			$('#title').html('즐겨찾기 현황');
			$.ajax({
				url:'/docoding/mypageAction.do',
				data:{"pageAction":pageAction,"id":$('#id_get').val()},
				success:function(result){
					
					$('#add_list').html(result);
				}
			});
		});	// bookmark
		
	});
</script>
</head>
<body>
<input type="hidden" id="get_id">
<input type="hidden" id="login_flag">
<center>
<div>
<h4>구매자료 및 즐겨찾기 현황</h4>
<a id="sel_buylist"><font size="4">구매자료</font></a> <font size="4">  |  </font> 
<a id="sel_bookmark"><font size="4">즐겨찾기</font></a>
<hr width="30%">
</div>

<div id="basic" style="display: ">
	구매자료 혹은 즐겨찾기 중 열람하고자 하는 사항을 눌러주세요.
</div>

<div id="list" style="display: none;">
<br>
<font size="5"><div id="title"></div></font>
<hr width="80%">
<div id="add_list">

</div>
</div>	
</center>
</body>
</html>