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
					data:{"pageAction":"trans_profit1","id_d":$('#input_id').val(),
						"name":$('#input_name').val(),"pass":$('#input_pwd').val(),
						"id":$('#get_id').attr("value")},
					success : function(result){
					//	alert(result.trim());	// fail or true
						if(result.msg==="true"){
							$('#get_money').attr('value',result.account);
							$('#confirm').hide();
							$('#trans').show();
						}else{
							alert(result.msg)
						}
					},
					dataType: 'json'
					
			}); //ajax
			}
		});// bt_check
		
		$('#bt_check2').click(function(){
			if($('#get_money').attr('value')<$('#trans_money').val()){
				alert("현재 소유하고 계신 캐쉬보다 많은 금액을 출금 할 수 없습니다.\n"
						+"현재 소유 금액 : "+$('#get_money').attr('value'));
			}else{
			
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{"pageAction":"trans_profit2",
						"id":$('#get_id').attr("value"),
						"trans_money":$('#trans_money').val()},
					success : function(result){
					//	alert(result.trim());	// fail or true
						if(result.trim()==="true"){
							$('#trans').hide();
							$('#clear').show();
						}else{
							alert('수익전환 실패!!')
						}
					}
			}); //ajax
			
			}
		});// bt_check
		
		$('.bt_cancel').click(function(){
			window.close();
		});
	});
</script>
</head>
<body>
<input type="hidden" id="get_id" value="abcd">
<input type="hidden" id="get_money" value="">
<center>
<h3>수익전환 확인창</h3>
<hr>
<div id="confirm" style="display: ">
	<table border="0" cellpadding="5">
		<tr align="center"><th colspan="2">수익전환 회원 정보 입력</th></tr>
		<tr align="center"><td>아이디 :</td><td><input type="text" id="input_id" autofocus></td></tr>
		<tr align="center"><td>비밀번호 :</td><td><input type="password" id="input_pwd"> </td></tr>
		<tr align="center"><td>이름 :</td><td><input type="text" id="input_name"></td></tr>
		<tr align="center"><td colspan="2"><button id="bt_check"> 입력 </button>
						    <button class="bt_cancel"> 취소 </button></td></tr>
		<tr align="center"><td colspan="2">수익 전환을 위한 개인정보 입력 요망</td></tr>
	</table>
</div>
<div id="trans" style="display: none">
	<table border="0" cellpadding="5">
		<tr align="center"><th colspan="2">수익전환금 입력창</th></tr>
		<tr align="center"><td>전환 수익금 : </td><td><input type="text" id="trans_money" autofocus></td></tr>
		<tr align="center"><td colspan="2">수익으로 전환 할 금액을 입력하시오. </td></tr>
		<tr align="center"><td colspan="2"><button id="bt_check2"> 확인 </button>
						    <button class="bt_cancel"> 취소 </button></td></tr>
		<tr align="center"><td colspan="2"><font color="red" size="2">*전환된 수익은 다시 캐쉬로 반환 할 수 없음을 고지합니다.</font></td></tr>
	</table>
</div>
<div id="clear" style="display: none">
	success
</div>
</center>
</body>
</html>