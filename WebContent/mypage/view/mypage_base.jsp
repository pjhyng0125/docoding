<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이 페이지 창</title>
</head>
<body>
<%-- - mypage_base 완료   (o)
	 - 각 jsp페이지 만들기	(세모) -> 바꿀 jsp 만들어주기 
	 - 해당 jsp 페이지 tiles-defs.xml 등록하기		(세모) -> body에 바꿀 jsp 생성시 등록해주기
	 - struts-config.xml action 등록하기  	(x) 	--%>

	<!-- 이성훈 mypage action 설정 시작-->
	<!-- tiles -->
	<!-- action class -->
	<!-- 이성훈 mypage action 설정 종료-->


<center>
	<table width="100%">	<!-- 공용 top head table -->
		<tr><td><tiles:insert attribute="h"/></td></tr>
		<tr><td><tiles:insert attribute="s"/></td></tr>
		<tr><td><tiles:insert attribute="menu"/></td></tr>
	</table>
	<table width="100%"> <!-- body table -->
		<tr>
			<td width="20%"><tiles:insert attribute="sidemenu"/></td>	<!-- menu bar  -->
			<td><tiles:insert attribute="b"></tiles:insert></td> <!-- main body -->
		</tr>
		
		<tr><td><tiles:insert attribute="f"/></td></tr> <!-- 공용 footer -->
	</table>
</center>
</body>
</html>