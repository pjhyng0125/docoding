<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	// 회원가입 화면의 입력값들을 검사한다.
	function checkValue() {
		var form = document.userInfo;

		/* if (!form.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		} */

		/* if (form.idDuplication.value != "idCheck") {
			alert("아이디 중복체크를 해주세요.");
			return false;
		} */

		if (!form.pass.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (form.pass.value != form.passcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}

		if (!form.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}

		if (!form.mail1.value) {
			alert("메일 주소를 입력하세요.");
			return false;
		}
		

		if (!form.cell1.value) {
			alert("휴대폰 앞자리를 입력하세요.");
			return false;
		}
		
		if (!form.cell2.value) {
			alert("휴대폰 뒷자리를 입력하세요.");
			return false;
		}
		
		if (!form.captcha.value){
			alert("화면에 보이는 보안코드를 입력해주세요");
			return false;
			}
		}
		

	// 취소 버튼 클릭시 첫화면으로 이동
	function goFirstForm() {
		location.href = "MainForm.do";
	}

	// 아이디 중복체크 화면open
	function openIdChk() {

		window.name = "parentForm";
		window.open("/docoding/login/view/idCheck.jsp", "chkForm",
				"width=500, height=300, resizable = no, scrollbars = no");
	}

	// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
	// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
	// 다시 중복체크를 하도록 한다.
	function inputIdChk() {
		document.userInfo.idDuplication.value = "idUncheck";
	}
</script>
</head>
<%-- join.jsp --%>
<body>
	<form method="post" action="MemberJoinAction.do" name="userInfo"
		onsubmit="return checkValue()">
	<center>
		<br> <br> <b><font size="7" color="gray" face="impact">코딩합니다</font>
			<font size="7" color="sky blue" face="imapct">회원가입</font></b>
		<table>
			<br>
			<br>
			<br>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8"
					onkeydown="inputIdChk()">아이디<font color="red">*</font></td>
				<td colspan="3">
					<input type="text" name="id" placeholder="영문/숫자(6자리~12자리)" onkeydown="inputIdChk()"
					style="width: 371px; height: 51px"> 
					<input type="button" value="중복확인" onclick="openIdChk()" maxlength="50"
					style="background-color: #b8d6d8; height: 40px;">
					<input type="hidden" name="idDuplication" value="idUncheck"></td>

			</tr>

			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">비밀번호<font
					color="red">*</font></td>
				<td colspan="3">
					<input type="password" name="pass" placeholder="영문/숫자/특수문자포함(6자리~12자리)"
					style="width: 371px; height: 51px"></td>
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">비번확인</td>
				<td>
					<input type="password" name="passcheck"
					style="width: 371px; height: 51px"></td>
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">이름<font
					color="red">*</font></td>
				<td colspan="3">
					<input type="text" name="name"
					style="width: 371px; height: 51px"> 
					<input name="gender"
					id="man" type="radio" checked="checked" value="male"><label
					class="on" id="manLb" onclick="Join.eraseLabel('noticeName')"
					for="man">남</label> 
					<input name="gender" id="woman" type="radio"
					value="female"><label id="womanLb"
					onclick="Join.eraseLabel('noticeName')" for="woman">여</label></td>
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">생년월일<font
					color="red">*</font></td>
				<td colspan="3">
				<select name="year"
					style="height: 30px; width: 61px">
						<%
							for (int i = 2018; i >= 1900; i--) {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
							}
						%>
				</select>년 <select name="month" style="width: 61px; height: 30px">
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
				</select>월 <select name="day" style="width: 61px; height: 30px">
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
					<input type="text" name="mail1" maxlength="50"
					style="height: 51px;">@ 
				<select name="mail" style="height: 51px; width: 129px">
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
				<select name="cell"
					style="width: 56px; height: 51px">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
				</select> - <input type="text" size="4" maxlength="4" name="cell1"
					style="height: 45px; width: 59px"> - <input type="text"
					size="4" maxlength="4" name="cell2" style="height: 45px; width: 59px"></td>

			</tr>
			<tr>
				<th align="center" width="120" bgcolor="#b8d6d8">자동가입방지<font
					color="red">*</font></th>
				<td class="attach"><img id="captchaimg" name="captchaimg"
					src="../../image/captcha.png" alt="Captcha image" height="45" /> <a
					onclick="document.inputForm.captchaimg.src='/captcha?id='+Math.random();"
					id="refresh" style="cursor: pointer">이미지 새로고침</a></td>
			</tr>
			<tr>
				<th></th>
				<td class="td">
					<input type="text" name="captcha" size="10" style="width: 157px;" /> 
					<input type="button" value="확인" style="background-color: #b8d6d8"></td>
			</tr>
		</table>
		<br> <br> <br> 
			<input type="submit" value="가입"
			style="background-color: orange; width: 69px; height: 38px;">
			<input type="reset" value="취소" onclick="goFirstForm()"
			style="background-color: orange; width: 69px; height: 38px;">
	</center>
	</form>
</body>
</html>