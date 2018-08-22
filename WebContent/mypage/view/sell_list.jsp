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
		
		$('#mysell').click(function(){
		
			
			pageAction = "mysell";
			$('#basic').hide();
			$('#list').show();
			$('#title').html('판매 자료 현황');
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
		
		$('#add_list').on('click','.del_bt',function(){
			
			var no = $(this).attr('value');
			pageAction = "sell_delete";
			$.ajax({
				url:'/docoding/mypageAction.do',
				data:{"pageAction":pageAction,"id":$('#get_id').attr("value"),"no":no},
				success:function(result){
					alert(result);
					pageAction = "mysell"
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
					});
				}	
			});
		});	// 판매 게시글 삭제버튼
		
		$('#sell_profit').click(function(){
			pageAction = "sell_profit";
			$('#basic').hide();
			$('#list').show();
			$('#title').html('판매수익 현황');
			$.ajax({
				url:'/docoding/mypageAction.do',
				data:{"pageAction":pageAction,"id":$('#get_id').val()},
				success:function(result){
					
					$('#add_list').html(result);
				}
			});	// ajax
		});	// 판매자 수익정보 출력
		
		
		$('#add_list').on('click','#trans_profit',function(){
			window.open("/docoding/mypage/view/trans_profit.jsp", "chkForm",
			"width=300, height=300, resizable = no, scrollbars = no");
			
		});// 수익전환
		
	});
</script>
<style type="text/css">
	#sell_profit_info{
		height:280px;
		width:1000px;
		background-color: yellow;
		border-radius: 20px;
		font-size:1.5em;
		text-align: left;
		padding-left: 60px;
	}
	#profit_title{
		text-decoration: underline;
		font-size:2em;
	}
	.pro_total_title{
		text-align: center;
	}

</style>
</head>
<body>
<input type="hidden" id="get_id" value="abcd">
<input type="hidden" id="login_flag">
<center>
<div>
<br>
<h4>판매자료 및 판매수익 현황</h4>
<a id="mysell"><font size="4">판매자료</font></a> <font size="4">  |  </font> 
<a id="sell_profit"><font size="4">수익현황</font></a>
<hr width="30%">
</div>

<div id="basic" style="display: ">
	판매자료 혹은 판매 수익 현황 중 열람하고자 하는 사항을 눌러주세요.
</div>

<div id="list" style="display: none;">
<font size="5"><div id="title"></div></font>
<hr id="h_line" width="50%">
<div id="add_list">

</div>
</div>	
</center>
</body>
</html>