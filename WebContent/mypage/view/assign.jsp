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
					data : {"pageAction":"a_search_pwd","id":"abcd"},
					success :function(result){
						//alert(result.trim());
						if(result.trim()===$('[name=pwd]').val()){
							$('#d1').hide();
							$('#d2').show();
						}else{
							alert('비밀번호를 확인해 주세요!');
						}
					}
					
			});
		});	// check bt
		
	});
</script>
</head>
<%-- 판매자 등록 창 --%>
<body>
<input type="hidden" id="get_id">

<center>
<div id="d1" style="display: ">
비밀번호 확인 : <input type="password" name="pwd" size="10">
			<input type="button" name="pw_check_bt" value="확인"><br>
- 개인정보 확인을 위한 비밀번호 요청 -			
</div>
<div id="d2" style="display:none;">

</div>
</center>
</body>
</html>