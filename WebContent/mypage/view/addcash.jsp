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
		$('#bt_select').click(function(){
			$('#d0').hide();
			$('#d1').show();
		});
		
		$('#bt_check').click(function(){
			if($('#input_id').val().length==0||$('#input_pwd').val().length==0
				||$('#input_name').val().length==0||$('#input_phone').val().length==0){
				alert('ID, 패스워드, 이름, 전화번호를 반드시 입력하시오.')
				
			}else{
				//alert('id'+$('#input_id').val())
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":"c_check_member","id_d":$('#input_id').val(),
						"name":$('#input_name').val(),"pass":$('#input_pwd').val(),
						"id":$('#get_id').attr("value"),
						"phone":$('#input_phone').val()},
					success : function(result){
					//	alert(result.trim());	// fail or true
						if(result.trim()==="true"){
							$('#d1').hide();
							$('#d2').show();
						}else{
							alert('인증 실패!')
						}
					}
			}); //ajax
			}
		});// bt_check
		
		$('#bt_input_cash').click(function(){
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":"c_input_cash",
						  "id":$('#get_id').attr("value"),
						  "cash":$('#input_cash').val() },
					success: function(result){
						if(result.trim()==="true"){
							$('#d1').hide();
							$('#d2').hide();
							$('#d3').show();
						}else{
							$('#d1').hide();
							$('#d2').hide();
							$('#d3').show();
							$('#d3').html('캐쉬 충전 실패');
						}
					}
			});//ajax
			
		});// bt_input_cash
	});

</script>
</head>
<!-- 회원탈퇴 -->
<body>
<input type="hidden" id="get_id" value="abcd">
<input type="hidden" id="login_flag">
<center>
<h4>캐쉬 충전</h4>
<hr>
<div id="d0" style="display: ">
	<font size="4">결제 수단 선택</font><br><br>
	<button id="bt_select">휴대전화</button>
</div>
<div id="d1" style="display: none;">
	<font size="4">결제 진행 창</font>
	<hr width="40%">
<table border="0" cellpadding="5">
<tr align="center"><td>아이디 : </td><td><input type="text" id="input_id" autofocus></td></tr>
<tr align="center"><td>비밀번호 : </td><td><input type="password" id="input_pwd"> </td></tr>
<tr align="center"><td>이름 : </td><td><input type="text" id="input_name"></td></tr>
<tr align="center"><td>전화번호 : </td><td><input type="text" id="input_phone"></td>
				  <td><font size="2" color="red">*휴대전화 입력 양식<br> 'xxx-xxxx-xxxx'</font></td></tr>
<tr align="center"><td colspan="2"><button id="bt_check">입력</button></td></tr>
<tr align="center"><td colspan="2">결재를 위한 개인정보 입력 요망</td></tr>
</table>
</div>
<div id="d2" style="display:none;">
	<font size="4">결제 진행 창</font>
	<hr width="50%">
	충전금액 입력 : <input type="text" id ="input_cash">
	<button id="bt_input_cash">확인</button>
</div>
<div id="d3" style="display: none;">
	캐시충전완료!
</div>

</center>
</body>
</html>