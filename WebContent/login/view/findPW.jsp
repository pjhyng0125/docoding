<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>패스워드 찾기</title>
</head>
<%-- findPW.jsp --%>
<body>
	<center>
		<br> <br>
		<table>
			<b><font size="7" color="gray" face="impact">비밀번호찾기</font></b>
			<br>
			<br>
			<br>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">아이디<font
					color="red">*</font></td>
				<td colspan="3"><input type="text" name="id" style="width: 371px; height: 51px">
			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">휴대폰<font
					color="red">*</font></td>
				<td colspan="3"><select name="ph1"
					style="width: 56px; height: 51px">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
				</select> - <input type="text" size="4" maxlength="4" name="ph2"
					style="height: 51px; width: 61px"> - <input type="text"
					size="4" maxlength="4" name="ph3" style="height: 51px; width: 61px"></td>

			</tr>
			<tr>
				<td align="center" width="100" bgcolor="#b8d6d8">생년월일<font
					color="red">*</font></td>
				<td colspan="3"><select name="year"
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
							for (int i = 1; i < 13; i++) {//12번 반복
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
		</table>
		<br> <br> <br> 
		<input type="submit" value="찾기"
			style="background-color: orange; width: 69px; height: 38px;">
		<input type="button" value="취소" onclick="window.close()"
			style="background-color: orange; width: 69px; height: 38px;">
	</center>
</body>
</html>