<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- login.jsp --%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$('[name=logout]').click(function(){
    			$.ajax({
						url:'/docoding/main/view/login.jsp',    				
    					success:function(result){
    						$('#successForm').html(result);
    					}
    			});
    		});
    	});    
    </script>
<div id="successForm">
<form>
<fieldset id="id">
<legend><strong>${param.userid }</strong>님</legend> 
<table border="1">
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
<input type="button" name="logout" value="로그아웃">
</fieldset>
</form>
</div>