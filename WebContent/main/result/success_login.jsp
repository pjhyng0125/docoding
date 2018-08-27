<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- login.jsp --%>
<style> 
	.lo_b{
		background-color: #00498c;
		border-radius: 10px;
		color: white;
	}
	.a_s:hover{text-decoration: none; color: black;}
	.a_s{color: black; font-size: 5;}
	#d1,#d2,#d3:hover{text-decoration: none; color: black;}
	
	
	</style>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$('[name=logout]').click(function(){
    			if(confirm('로그아웃 하시겠습니까?')){
    			$.ajax({
						url:'/docoding/loginAction.do', 
						data:{
							action:"logout",
							logout_id: $('#userid').val()
						},
    					success:function(result){
    						alert('로그아웃 성공! (홈페이지)');
	    					$('#successForm').html(result);
    					}
    			});
    			window.location.reload();
    		}//confirm
    	});//click
    	
    	$.ajax({
    		url:"/docoding/mypageAction.do",
    		data:{
    			pageAction:"print",
    			login_id:$('#userid').val()
    		},
    		success: function(data){
    			var strs=data.split(',');
    			$('#d1').html(strs[0]+"원");
    			$('#d2').html(strs[1]+"개");
    			$('#d3').html(strs[2]+"개");
    		}
    	});
    });    
    </script>
<div id="successForm" class="card align-middle" style="width:25rem; border-radius:20px;">
<form>
<fieldset id="id">
<div class="card-body">
<legend><strong><%=session.getAttribute("login_id") %></strong>님</legend> 
<input type="hidden" id="userid" value="${login_id}"> 
<div class="container-fruid">
<table class="table table-striped table-bordered text-center" cellpadding="4">
	<tr>
		<td width="40%"><a href="/docoding/mypage/cash.do">충전잔액</a></td>
		<td width="25%"><a href="/docoding/mypage/mysell.do">판매자료</a></td>
		<td width="25%"><a href="/docoding/mypage/mybuylist.do">구입자료</a></td>
	</tr>
	<tr align="center">
		<td><a href="/docoding/mypage/cash.do"><div id="d1"></div></a></td>
		<td><a href="/docoding/mypage/mysell.do"><div id="d2"></div></a></td>
		<td><a href="/docoding/mypage/mybuylist.do"><div id="d3"></div></a></td>
	</tr>
</table>
</div>
<input type="button" name="logout" class="lo_b" value="로그아웃">
</div>
</fieldset>
</form>
</div>