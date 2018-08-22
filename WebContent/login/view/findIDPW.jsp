<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 패스워드 찾기</title>
<script type="text/javascript">
	function openIdChk() {

		window.name = "parentForm";
		window.open("/docoding/login/view/findID.jsp", "chkForm",
				"width=800, height=500, resizable = no, scrollbars = no");
	}
	function openPwChk() {

		window.name = "parentForm";
		window.open("/docoding/login/view/findPW.jsp", "chkForm",
				"width=800, height=500, resizable = no, scrollbars = no");
	}
</script>
</head>
<%-- findIDPW.jsp --%>
<body>
	<center>
		<br> <br> <br>
		<h1>찾고자하는 버튼을 눌러주세요!</h1>
		<br> <br> 
			<input type="submit" value="ID찾기" onclick="openIdChk()" style="background-color: skyblue; width: 268px; height: 114px;">
			<input type="submit" value="PW찾기" onclick="openPwChk()" style="background-color: skyblue; width: 268px; height: 114px;"><br><br>
			<input type="button" value="취소" onclick="window.location='main.do'" style="background-color: skyblue; width: 102px; height: 53px">
	</center>
</body>
</html>