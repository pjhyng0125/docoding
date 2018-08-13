<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- inputSell.jsp: 판매 게시물 입력 화면 --%>
<center>
<h3>판매 게시물 입력 화면</h3>
<input type="text" id="title" value="제목">
<select>
	<option>선택</option>
	<option>java</option>
	<option>DB</option>
	<option>javascript</option>
	<option>jsp</option>
	<option>jQuery</option>
</select>
<input type="button" id="addpic" value="사진첨부">
<input type="button" id="post" value="발행">
<input type="button" id="cancel" value="취소"><br>
<textarea cols="100" rows="20"></textarea>
</center>
</body>
</html>