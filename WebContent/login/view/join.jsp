<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<!-- <script src="/docoding/js/join.js"></script> -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#userId').click(function(){
		
		var form = document.userInfo;
	    
		
        if(!form.id.value){
            alert("아이디를 입력하세요.");
        }
        
        else if(form.id.value.length<6 != form.pass.value.length>12){
        	alert("아이디를 확인해주세요.")
        }
        
        else if(!form.pass.value){
            alert("비밀번호를 입력하세요.");
        }
        
        else if(form.pass.value.length<6 != form.pass.value.length>12){
            alert("비밀번호를 6~12자까지 입력해주세요.");
        }
        
        // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
        else if(form.pass.value != form.passCheck.value ){
            alert("비밀번호를 동일하게 입력하세요.");
        }
              
        else if(!form.name.value){
            alert("이름을 입력하세요.");
        }
        
        else if(!form.mail1.value){
            alert("메일 주소를 입력하세요.");
        }
        
       	else if(!form.cell1.value){
            alert("앞자리를 입력하세요.");
        
       	}
       	
       	else if(isNaN(form.cell1.value)){
        	alert("숫자만입력해주세요.");
        	}
       	
       	else if(!form.cell2.value){
            alert("뒷자리를 입력하세요.");
         }
       	
       	else if(isNaN(form.cell2.value)){
        	 alert("숫자만입력해주세요.");
         }else{
				$.ajax({	
					url:"/docoding/joinAction.do",
					data:{
						action:"insert_login",
						id:$('#id').val(),
						pass:$('#pass').val(),
						name:$('#name').val(),
						gender:$('input[name=gender]:checked').val(),
						birth: $('#year').val()+"/"+$('#month').val()+"/"+$('#day').val(),
						email: $('#mail1').val()+"@"+$('#mail2').val(), 
						phone: $('#cell').val()+"-"+$('#cell1').val()+"-"+$('#cell2').val()
					},
					success:function(data){
						
						if(data.trim()=="success"){
							alert('가입을 환영합니다!');
							location.href="/docoding/main.do";
						}
					}
				});//ajax
              }
	});//버튼 클릭
			
		
		$('#id').keyup(function(){
			var str=$(this).val();
			if(str.length>=6 && str.length<=12){
				$.ajax({
					url:"/docoding/idcheck.do",
					data:{
						action:"idcheck",
						checkid:$('#id').val()
					},
					success: function(data){
						$('#idcheck').html(data);
					}
				});
			}else{
				$('#idcheck').html('<font color=red>아이디 조건 위반</font>');
			}
		});
		
		
	});//document ready 
         

</script> 
</head>
<%-- join.jsp --%>
<body>
<form method="post" name="userInfo" onsubmit="return inputCheck();">	
	<center>
		<br> <br> <b><font size="7" color="gray" face="impact">코딩합니다</font>
			<font size="7" color="sky blue" face="imapct">회원가입</font></b>
		<table>
			<br>
			<br>
			<br>
			<br>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">아이디<font color="red">*</font></td>
				<td colspan="3">
					<input type="text" id="id" name="id" placeholder="영문/숫자(6자리~12자리)"
					style="width: 371px; height: 51px" > 
					<%-- <input type="button" value="중복확인" name="idCheck" id="idCheck" maxlength="50"
					style="background-color: #b8d6d8; height: 40px;">
					<html:messages message="true" id="msg">
						<font color="blue"><b><bean:write name="msg"/></b></font>
					</html:messages> --%>
				<td><div id="idcheck"></div></td>
			</tr>

			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">비밀번호<font color="red">*</font></td>
				<td colspan="3">
					<input type="password" id="pass" name="pass" placeholder="영문/숫자/특수문자포함(6자리~12자리)"
					style="width: 371px; height: 51px"></td>
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">비번확인</td>
				<td>
					<input type="password" name="passCheck" id="passCheck"
					style="width: 371px; height: 51px"></td>
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">이름<font
					color="red">*</font></td>
				<td colspan="3">
					<input type="text" name="name" id="name" placeholder="이름을 입력해주세요" style="width: 371px; height: 51px"> 
					<input name="gender" id="man" type="radio" checked="checked" value="male"><label
					class="on" id="manLb" for="man">남</label> 
					<input name="gender" id="woman" type="radio" value="female"><label id="womanLb"
					 for="woman">여</label></td>
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">생년월일<font
					color="red">*</font></td>
				<td colspan="3">
				<select name="year" id="year" style="height: 30px; width: 61px">
						<%
							for (int i = 2018; i >= 1900; i--) {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
							}
						%>
				</select>년 <select name="month" id="month" style="width: 61px; height: 30px">
						<%
							for (int i = 1; i < 13; i++) {
								if (i < 10) {
						%>
						<option value="<%=i%>">0<%=i%></option>
						<%
							} else {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
							}
							}
						%>
				</select>월 <select name="day" id="day" style="width: 61px; height: 30px">
						<%
							for (int i = 1; i < 32; i++) {
								if (i < 10)
									out.print("<option value='" + i + "'>0" + i + "</option>");
								else
									out.print("<option value='" + i + "'>" + i + "</option>");
							}
						%>
				</select>일
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">E-Mail<font
					color="red">*</font></td>
				<td colspan="3">
					<input type="text" name="mail1" id="mail1" maxlength="50" style="height: 51px;">@ 
				<select name="mail2" id="mail2" style="height: 51px; width: 129px">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>yahoo.com</option>
				</select></td>
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">휴대폰<font
					color="red">*</font></td>
				<td colspan="3">
				<select name="cell" id="cell"
					style="width: 56px; height: 51px">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
				</select> - <input type="text" name="cell1" id="cell1" size="4" maxlength="4"
					style="height: 45px; width: 59px"> - <input type="text" name="cell2" id="cell2"
					size="4" maxlength="4" style="height: 45px; width: 59px"></td>
			</tr>
		</table>
		<br> <br> <br> 
			<input type="button" value="가입" id="userId" style="background-color: orange; width: 69px; height: 38px;">
			<input type="reset" value="취소" onclick="window.location='main.do'" style="background-color: orange; width: 69px; height: 38px;">
	</center>
</form>
</body>
</html>