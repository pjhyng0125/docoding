<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>중복확인</title>
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script type="text/javascript">
   $(function(){
	   $('#idCheck').click(function(){
		   $.ajax({
			   url:"/docoding/joinAction.do",
		   	   data:{
		   		   action:"insert_idCheck",
		   		   id:$('#userId').val()
		   		},
		   		success:function(data){
		   			alert(data);
		   		}
		   });//ajax
	   });//버튼 클릭
   });
   function sendCheckValue(){
       // 중복체크 결과인 idCheck 값을 전달한다.
       opener.document.userInfo.idDuplication.value ="idCheck";
       // 회원가입 화면의 ID입력란에 값을 전달
       opener.document.userInfo.id.value = document.getElementById("userId").value;
       
       if (opener != null) {
           opener.chkForm = null;
           self.close();
       }    
   }    
   </script>
</head>
<body onload="pValue()">
	<center>
<div id="wrap">
    <br>
    <b><font size="4" color="gray">아이디 중복체크</font></b>
    <hr size="1" width="460">
    <br>
    <div id="chk">
        <form id="checkForm">
            <input type="text" name="idinput" id="userId">
            <input type="button" value="중복확인" id="idCheck" style="background-color: orange">
        </form>
        <div id="msg"></div> 
        <br>
        <input id="cancelBtn" type="button" value="취소" onclick="window.close()" style="background-color:orange"><br><br>
        <input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()" style="background-color: orange">
    </div>
</div>  
</center>
</body>
</html>