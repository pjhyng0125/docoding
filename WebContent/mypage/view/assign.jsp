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
		$.ajax({
			url:'/docoding/mypageAction.do',
			data:{"pageAction":"check_assign","id":$('#get_id').attr("value")},
			success: function(result){
				if(result.trim()=="true"){	// 이미 판매자 등록이 된 경우
					$('#d1').hide();
					$('#d4').show();
				}else{						// 아직 판매자 등록 x
					$('#d1').show();
					$('#d4').hide();
				}
			}
		});
		$('[name=pw_check_bt]').click(function(){		// 비밀번호 확인
			$.ajax({
					url:'/docoding/mypageAction.do',		// action class와 연결
					data : {"pageAction":"a_search_pwd","id":$('#get_id').attr("value")},
					success :function(result){
						//alert(result.trim());
						if(result.trim()===$('[name=pwd]').val()){
							$('#d1').hide();
							$('#d2').show();
							$('[name=pwd]').val('');
						}else{
							alert('비밀번호를 확인해 주세요!');
						}
					}
					
			});
		});	// check bt
		
		$('#bt_check').click(function(){
			if($('[name=radio]:checked').val()==='agree'){
				$('#d3').show();
				$('#d1').hide();
				$('#d2').hide();
			}else{
			//	$('[name=radio]').attr('checked').val()=checked;
				$('#d1').show();
				$('#d2').hide();
				$('#d3').hide();
			}
		});	// bt_check
		
		$('#bt_assign').click(function(){
			if($('#account_num').val().length==0){
				alert('계좌번호를 입력하세요');
			}
			else {
			$.ajax({
					url:'/docoding/mypageAction.do',
					data:{
							"pageAction":"a_assign_seller",
							"id":$('#get_id').attr('value'),
							"account_num":$('#account_num').val()
						 },
					success : function(result){
						if(result.trim()=="true"){
							$('#d1').hide();
							$('#d2').hide();
							$('#d3').hide();
							$('#d4').show();
						}else{
							alert('판매자 등록 실패')
							$('#d1').show();
							$('#d2').hide();
							$('#d3').hide();
						}
					}
				
			});	// ajax
			}
		}); // bt_assign
		
	});
</script>
</head>
<%-- 판매자 등록 창 --%>
<body>
<input type="hidden" id="get_id" value="${login_id}">
	<input type="hidden" id="login_flag">
	<center>
		<h4>판매자 등록</h4>
		<hr><br>
		<div id="d1" style="display: none;">
			비밀번호 확인 : <input type="password" name="pwd" size="10" autofocus> <input
				type="button" name="pw_check_bt" value="확인"><br>
				 - 개인정보 확인을 위한 비밀번호 요청 -
		</div>
		<div id="d2" style="display: none;">
			<input type="radio" name="radio" value="agree" id="agree" checked>
			<label for="agree">위 약관에 동의합니다.</label><br> 
			<input type="radio" name="radio" value="dis" id="dis">
			<label for="dis">위 약관에 동의하지 않습니다.</label><br>
			<button id="bt_check">확인</button>
		</div>
		<div id="d3" style="display: none;">
			<table border="1">
				<tr>
					<td>계좌번호 입력 :</td>
					<td><input type="text" id="account_num" size="15"></td>
				</tr>
				<tr>
					<td colspan="2"><button id="bt_assign">판매자 등록하기</button></td>
				</tr>
			</table>
		</div>
		<div id="d4" style="display: none;">
			판매자 등록이 완료 되었습니다. <a href="/docoding/mypage.do">마이페이지 창으로 이동하기</a>
		</div>
	</center>
</body>
</html>