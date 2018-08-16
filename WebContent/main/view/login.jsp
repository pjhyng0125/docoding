<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- login.jsp --%>
<script>
	$(function(){
		$('[name=login]').click(function(){
			$.ajax({
				url:'/docoding/loginAction.do',
				data:{
					userid:$('[name=userid]').val(),
					userpass:$('[name=userpass]').val()
				},
				success:function(result){
					$('#loginForm').html(result);
				}
				
			});		
		});		

		
	});
</script>
<div  id="loginForm">
<form method="post">
<fieldset>
<legend><strong>코딩합니다!</strong> LOGIN</legend>
<table cellpadding="5">
	<tr>
		<td><input type="text" placeholder="아이디" name="userid" required></td>
		<td rowspan="2"><input type="button" name="login" value="로그인"></td>
	</tr>
	<tr>
		<td><input type="password" placeholder="비밀번호" name="userpass" required></td>
	</tr>
	<tr>
		<th colspan="3"><font size="2"><a>회원가입</a> <a>아이디</a>/<a>비번찾기</a></font></th>
	</tr> 
</table>
</fieldset>
</form>
</div>
