<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		url:"/docoding/action/admin.do",
		data:{action:"select_freepost"},
		success:function(htmlTxt){
			$('#d1').html(htmlTxt);
		}
	});
});
</script>
</head>
<body>
<center>
<div id="d1"></div>
</center>
</body>
</html>