<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<script type="text/javascript" src="/docoding/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<style type="text/css">
	button{
		width: 180px;
	}
</style>
</head>
<%--header.jsp --%>
<body>

<div class="container">

<br>
<html:link action="/mypage/modify"><button class="btn btn-primary btn-lg">회원정보 수정</button></html:link><br><br>
		<%-- 아래 두가지 다 같은 방식 forward 값  / path 값 읽느냐 차이 --%>
<a href="/docoding/mypage/cash.do"><button class="btn btn-primary btn-lg">캐쉬충전 </button></a><br><br>
		<%-- <html:link action="/mypage/cash"><button>캐쉬충전 html</button><br></html:link> --%>
<html:link action ="/mypage/assign"><button class="btn btn-primary btn-lg">판매자 등록</button></html:link><br><br>

<html:link action ="/mypage/drop"><button class="btn btn-primary btn-lg">회원탈퇴</button></html:link><br><br>
		
<button class="btn btn-primary btn-lg">로그아웃   </button>


</div>

</body>
</html>



