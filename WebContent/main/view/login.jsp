<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- login.jsp --%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <style>
	a:hover{text-decoration: none; color: blue;}
	
	.card-body{
	   height: 60%;
	   width:100%;
	   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	   border-radius:20px;
	   }
	 
	</style>
 <script>
	 $(function(){
		$('[name=login]').click(function(){
			if(loginCheck.userid.value ==""){
				alert("아이디를 입력해 주세요.");
				loginCheck.userid.focus();				
			}else if(loginCheck.userpass.value==""){
				alert("비밀번호를 입력해 주세요.");
				loginCheck.userpass.focus();
			}else if(loginCheck.userid.value =="system" && loginCheck.userpass.value=="manager"){
				alert('관리자 로그인 성공!');
				
				location.href="/docoding/admin.do"
			}
			else{//로그인 성공시
				$.ajax({
					url:'/docoding/loginAction.do',
					data:{
						userid:$('[name=userid]').val(),					
						userpass:$('[name=userpass]').val(),
						action:"login"
					},
					success:function(result){
						 if(result.indexOf('text/javascript') < 0)
						  {
							alert(result);
						 }
						else{
							alert('로그인 성공!');
							$('#loginForm').html(result);
						} 
					}
					
				});
				window.location.reload();
			}
		});	
		
	}); 
	
	
	
</script>

<div  id="loginForm" class="card align-middle" style="width:20rem; border-radius:20px;">
<form name="loginCheck" method="post">
<center>
<fieldset>
<div class="card-body">
<legend><font face="impact" color="gray">코딩합니다</font> <b>LOGIN</b></legend>
<table cellpadding="5">
	<tr>
		<td><input type="text" placeholder="아이디" name="userid" required></td>
		<td rowspan="2"><input type="button" name="login" value="로그인" ></td>
	</tr>
	<tr>
		<td><input type="password" placeholder="비밀번호" name="userpass" required></td>
	</tr>
	<tr>
		<th colspan="3"><font size="2"><a href="/docoding/join.do">회원가입</a> <a href="/docoding/findIdPw.do">아이디/비번찾기</a></font></th>
	</tr> 
</table>
</div>
</fieldset>
</center>
</form>
</div>
