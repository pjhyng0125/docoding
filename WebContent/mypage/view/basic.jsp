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
			data:{"pageAction":"basic", "id":$('#get_id').attr("value")},
			success:function(result){
				$('#mypage_basic').html(result);
			}
		}); 
		
	});
</script>
<style type="text/css">
	#mypage_basic{
		height: 400px;
		width: 800px;
		background-color: yellow;
		border-radius: 20px;
		margin-top : 30px;
		position: relative; left: 150px;
	}
	
	#title{
		font-size:2.5em;
		text-align:center;
		
	}
	#title2{
		text-decoration: underline;
	}
	.content{
		font-size:2em;
		text-align: left;
		padding-left: 60px;
	}
</style>
</head>
<body>
<input type="hidden" id="get_id" value="${login_id}">
<input type="hidden" id="login_flag">

<div id="mypage_basic"></div>

</body>
</html>