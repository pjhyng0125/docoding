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
			//alert('buylist')
			pageAction = "sel_buylist";
			$('#basic').hide();
			$('#list').show();
			$('#title').html('구매 자료 현황');
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":pageAction,"id":$('#id_get').val()},
					success:function(){
						
					},
					dataType:'json'
			});
			
		});	// buylist
		
		$('#sel_bookmark').click(function(){
			//alert('bookmark')
			pageAction = "sel_bookmark";
			$('#basic').hide();
			$('#list').show();
			$('#title').html('즐겨찾기 현황');
			$.ajax({
				url:'/docoding/mypageAction.do',
				data:{"pageAction":pageAction,"id":$('#id_get').val()},
				success:function(){
					
				},
				dataType:'json'
			});
		});	// bookmark
		
	});
</script>
</head>
<body>
<input type="hidden" id="get_id">
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
<table width="80%" align="center" border="1">
	<thead align="center">
		<tr><th>일자</th><th>제목 및 내용</th><th width="17%">작성자</th><th width="10%">조회수</th></tr>
	</thead>
	<tbody width="80%" align="center">
		<tr><td>a</td><td>b</td><td>c</td><td>d</td></tr>
	</tbody>
</table>
</div>
	
</center>
</body>
</html>