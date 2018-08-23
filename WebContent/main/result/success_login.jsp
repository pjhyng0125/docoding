<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- login.jsp --%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$('[name=logout]').click(function(){
    			/* if(confirm('로그아웃 하시겠습니까?')){ */
    			$.ajax({
						url:'/docoding/loginAction.do', 
						data:{
							action:"logout",
							logout_id: $('#userid').val()
						},
    					success:function(result){
    						alert('로그아웃 성공!');
	    					$('#successForm').html(result);
    					}
    			});
    		/* } */
    	});
    });    
    </script>
<div id="successForm" class="card align-middle" style="width:20rem; border-radius:20px;">
<form>
<fieldset id="id">
<div class="card-body">
<legend><strong><%=session.getAttribute("login_id") %></strong>님</legend> 
<input type="hidden" id="userid" value="<%=session.getAttribute("login_id") %>"> 
<div class="container">
<table cellpadding="4">
	<tr>
		<td>충전잔액</td>
		<td>올린자료</td>
		<td>구입자료</td>
	</tr>
	<tr align="center">
		<td>0원</td>
		<td>0개</td>
		<td>0개</td>
	</tr>
</table>
</div>
<input type="button" name="logout" value="로그아웃">
</div>
</fieldset>
</form>
</div>