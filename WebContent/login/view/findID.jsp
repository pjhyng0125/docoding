<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
</head>
<%-- findID.jsp --%>
<body>
	<center>
		<br> <br>
		<table>
			<b><font size="7" color="gray" face="impact">아이디찾기</font></b>
			<br>
			<br>
			<br>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">이름<font
					color="red">*</font></td>
				<td colspan="3"><input type="text" name="name"
					style="height: 51px; width: 299px"></td>
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">E-Mail<font
					color="red">*</font></td>
				<td colspan="3"><input type="text" name="mail1" maxlength="50"
					style="height: 51px;">@ <select name="mail2"
					style="height: 51px; width: 129px">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>yahoo.com</option>
				</select></td>
			</tr>
		</table>
		<br> <br> <br> 
		<input type="submit" value="찾기"
			style="background-color: orange; width: 69px; height: 38px;">
		<input type="button" value="취소" onclick="window.close()"
			style="background-color: orange; width: 69px; height: 38px;">
	</center>
</body>
</html>