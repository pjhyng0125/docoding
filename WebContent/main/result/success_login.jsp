<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- login.jsp --%>
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
    		}//confirm
    	});//click
    	
    	
    	alert($('#userid').val());
    	$.ajax({
    		url:"/docoding/mypageAction.do",
    		data:{
    			pageAction:"print",
    			login_id:$('#userid').val()
    		},
    		success: function(data){
    			alert(data);
    			var strs=data.split(',');
    			$('#d1').html(strs[0]+"원");
    			$('#d2').html(strs[1]+"개");
    			$('#d3').html(strs[2]+"개");
    			
    			
    			/* $('#d1').html()=strs[0];
    			$('#d2').html()=strs[1];
    			$('#d3').html()=strs[2]; */
    		}
    	});
    });    
    </script>
<div id="successForm" class="card align-middle" style="width:20rem; border-radius:20px;">
<form>
<fieldset id="id">
<div class="card-body">
<legend><strong><%=session.getAttribute("login_id") %></strong>님</legend> 
<input type="hidden" id="userid" value="${login_id}"> 
<div class="container">
<table cellpadding="4">
	<tr>
		<td>충전잔액</td>
		<td>판매자료</td>
		<td>구입자료</td>
	</tr>
	<tr align="center">
		<td><div id="d1"></div></td>
		<td><div id="d2"></div></td>
		<td><div id="d3"></div></td>
	</tr>
</table>
</div>
<input type="button" name="logout" value="로그아웃">
</div>
</fieldset>
</form>
</div>