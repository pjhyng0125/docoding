<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/docoding/js/jquery-3.3.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script type="text/javascript">
	$(function(){
		$('[name=pw_check_bt]').click(function(){		// 비밀번호 확인
			$.ajax({
					url:'/docoding/mypageAction.do',		// action class와 연결
					data : {"pageAction":"m_search_pwd","id":$('#get_id').attr("value")},
					success :function(result){
						if(result.pwd===$('[name=pwd]').val()){
							$('#d1').hide();
							$('#d2').show();
							$('#modify_id').val(result.id); 
							$('#modify_pwd').val(result.pwd);
							$('#modify_name').val(result.name);
							$('#modify_birth').val(result.birth);
							$('#modify_email').val(result.email);
							$('#modify_phone').val(result.phone);
						}else{
						//	alert('비밀번호를 확인해 주세요!');
						}
					},
					dataType : 'json'
			});
		});	// check bt
		
		$('#modify_bt').click(function(){				// 수정폼 보내기
			if($('#modify_pwd').val()===$('#modify_pwd2').val()){
			$.ajax({
					url:'/docoding/mypageAction.do',		// action class와 연결
					data : {
							"pageAction":"m_modify_form",
							"id":$('#modify_id').val(), 
							"pwd":$('#modify_pwd').val(),
							"name":$('#modify_name').val(),
							"birth":$('#modify_birth').val(),
							"email":$('#modify_email').val(),
							"phone":$('#modify_phone').val()
							},
					success:function(result){
						if(result.trim()==="true"){
							$('#d2').hide();
							$('#d3').show();
							$('[name=pwd]').val('');
						}
					}
			});	// ajax
			}	// 비밀번호와 확인비밀번호 일치할 시
			else{
				alert('비밀번호와 비밀번호 확인이 일치하지 않습니다!');
			}
		});	// modify bt 
		
		
	});
</script>
</head>
<body>
<input type="hidden" id="get_id" value="${login_id}">
<input type="hidden" id="login_flag">

<center>
<h4 class="seperate" bgcolor="green">회원정보 확인/수정</h4>
<hr>
<br>
<div id="d1" style="display: ">
비밀번호 확인  : <input type="password" name="pwd" size="10" autofocus >
			<input type="button" name="pw_check_bt" value="확인"><br>
- 개인정보 확인을 위한 비밀번호 요청 -			
</div>	
<div id="d2" style="display: none;">
	<table>
		<tr><td>아이디    :</td><td><input type="text" id="modify_id" disabled="disabled"></td></tr>
		<tr><td>비밀번호 :</td><td><input type="password" id="modify_pwd"></td></tr>
		<tr><td>비밀번호 확인:</td><td><input type="password" id="modify_pwd2"></td></tr>
		<tr><td>이름 :</td> <td><input type="text" id="modify_name"></td></tr>
		<tr><td>생년월일 :</td><td><input type="text" id="modify_birth" disabled="disabled"></td></tr>
		<tr><td>이메일    :</td> <td><input type="text" id= "modify_email"></td></tr>
		<tr><td>연락처    :</td> <td><input type="text" id="modify_phone"></td></tr>
	</table>
<button id="modify_bt">회원정보 수정하기</button>
</div>
<div id="d3" style="display: none">
회원정보 수정 완료!
</div>
</center>
</body>
</html>