<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>postList</title>
   	<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
        crossorigin="anonymous">
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"../result/sellList.jsp",
			success:function(result){
				$('div').html(result);
			},
			error:function(xhr,status,error){
				alert('서버에러!!');
				alert('상태: '+xhr.status+', 상태text: '+xhr.statusText+'\nstatus: '+status + '\nerror: '+error)	
			}//에러 콜백
		})
	})
</script>
</head>
<%--postList.jsp --%>
<body>
<h3>Java</h3> <!-- Java, DB, JavaScript, ... -->
<hr>
<ul>
<li><a href=""><span style="background-color: lime;">조회순</span></a></li>
<li><a href=""><span style="background-color: lime;">날짜순</span></a></li>
</ul>

<div id="list"></div>
<input type="button" value="글쓰기">


<center>
&lt;이전 <a href="">1</a> <a href="">2</a> 다음><br>
<select>
	<option>아이디</option>
	<option>제목</option>
</select><input type="text"><a href="">검색</a></center>
</body>
</html>