<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/docoding/js/jquery3.3.1.js"></script>
<script type="text/javascript">
	$(function(){
		$('[name=pw_check_bt]').click(function(){		// 비밀번호 확인
			$.ajax({
					url:'/docoding/mypageAction.do',		// action class와 연결
					data : {"pageAction":"m_search_pwd","id":"abcd"},
					success :function(pwd){
						alert(pwd);
						if(pwd===$('[name=pwd]').val()){
							$('#d1').hide();
							$('#d2').show();
						}
					}
			});
		});	// check bt
		
		$('#modify_bt').click(function(){				// 수정폼 보내기
			$.ajax({
					url:'',		// action class와 연결
					data : {
							"id":$('#modify_id').val(), 
							"pwd":$('#modify_pwd').val(),
							"birth":$('#modify_birth').val(),
							"email":$('#modify_email').val(),
							"phone":$('#modify_phone').val()
							},
					success:function(result){
						if(result==="true"){
							$('#d2').hide();
							$('#d3').show();
						}
					}
			});
		});
		
		
	});
</script>
</head>
<body>
<input type="hidden" id="get_id">
<center>
<div id="d1" style="display: ">
비밀번호 확인 : <input type="password" name="pwd" size="10">
			<input type="button" name="pw_check_bt" value="확인"><br>
- 개인정보 확인을 위한 비밀번호 요청 -			
</div>	
<div id="d2" style="display: none;">
아이디 :<input type="text" id="modify_id" disabled="disabled"><br>
비밀번호 :<input type="password" id="modify_pwd"><br>
생년월일 :<input type="text" id="modify_birth" disabled="disabled"><br>
이메일 : <input type="text" id= "modify_email"><br>
연락처 : <input type="text" id="modify_phone"><br>
<button id="modify_bt">회원정보 수정하기</button>
</div>
<div id="d3" style="display: none">
회원정보 수정 완료!
</div>
</center>
</body>
</html>