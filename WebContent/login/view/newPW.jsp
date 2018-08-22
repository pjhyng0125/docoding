<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새 패스워드</title>
<script type="text/javascript">
</script>
</head>
<%-- newPW.jsp --%>
<body>
	<center>
	<br><br><br>
		<h1>새로 설정하실 비밀번호를 입력해주세요!</h1>
		<br><br>
		<table>
			<tr>
				<td align="center" width="150" bgcolor="#b8d6d8">새로운 비밀번호<font
					color="red">*</font></td>
				<td colspan="3"><input type="password" name="pass" placeholder="영문/숫자/특수문자포함(6자리~12자리)"
					style="width: 371px; height: 51px">
				</td>
			</tr>
			<tr>
				<td align="center" width="150" bgcolor="#b8d6d8">새로운 비밀번호확인</td>
				<td><input type="password" name="pass2"
					style="width: 371px; height: 51px"></td>
			</tr>
		</table>
		<br><br><br>
		<input type="submit" value="설정"
			style="background-color:orange; width: 88px; height: 41px;">
		<input type="button" value="취소" onclick="window.close()"
			style="background-color:orange; width: 88px; height: 41px;">
	</center>
</body>
</html>