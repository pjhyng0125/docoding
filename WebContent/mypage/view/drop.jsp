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
		$('#bt_check').click(function(){
			if($('#input_id').val().length==0||$('#input_pwd').val().length==0
				||$('#input_name').val().length==0){
				alert('ID, 패스워드, 이름을 반드시 입력하시오.')
				
			}else{
				//alert('id'+$('#input_id').val())
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":"d_drop_member","id_d":$('#input_id').val(),
						"name":$('#input_name').val(),"pass":$('#input_pass').val()},
					success : function(result){
					//	alert(result.trim());	// fail or true
						if(result.trim()==="true"){
							$('#d1').hide();
							$('#d2').show();
						}else{
							alert('nono')
						}
					}
					
			}); //ajax
			}
		});// bt_check
	});

</script>
</head>
<!-- 회원탈퇴 -->
<body>
<input type="hidden" id="get_id">
<input type="hidden" id="login_flag">
<center>
<h4>회원 탈퇴</h4>
<hr>
<br>
<div id="d1" style="display: ">
<table border="0" cellpadding="5">
<tr align="center"><td>아이디</td><td><input type="text" id="input_id" autofocus></td></tr>
<tr align="center"><td>비밀번호</td><td><input type="password" id="input_pwd"> </td></tr>
<tr align="center"><td>이름</td><td><input type="text" id="input_name"></td></tr>
<tr align="center"><td colspan="2"><button id="bt_check">입력</button></td></tr>
<tr align="center"><td colspan="2">회원 탈퇴를 위한 개인정보 입력 요망</td></tr>
</table>
</div>
<div id="d2" style="display:none">
	그 동안 이용해 주셔서 감사합니다.
	<a href="">메인화면으로 이동하기</a>
</div>

</center>
</body>
</html>