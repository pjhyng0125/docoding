<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<script type="text/javascript" src="/docoding/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script type="text/javascript">
	
	var check_id ='';
	var w_flag = false;
	$(function(){
		
		var check_id =$('#get_id').val();
		
		//alert(check_id);
		if(check_id==''){
			$('#login_plz').show();
			$('#mypage_plz').hide();
	
		}else{
			$('#login_plz').hide();
			$('#mypage_plz').show();
		
		}
	});
	
	
</script>
</head>
<%--header.jsp --%>
<body>
<input type="hidden" id="get_id" value="${login_id}">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark" id="nav">
            <a href="/docoding/main.do" class="navbar-brand">
                <img src="/docoding/img/docoding_logo.png" alt="playdata">
            </a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#myNavbar">
                <span class="navbar-toggler-icon"/>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="myNavbar">
                <ul class="nav navbar-nav">
              
                	<div id="login_plz" style="display: "><li class="nav-item"><a href="" class="nav-link">로그인</a></li></div>
                	<div id="mypage_plz" style="display: none;" ><li class="nav-item"><a class="nav-link" href="/docoding/mypage.do">마이페이지</a></li></div>
                    <li class="nav-item"><a class="nav-link" href="">고객센터</a></li>
                </ul>
            </div>
        </nav>
</body>
</html>