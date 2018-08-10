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
<center>
	<table width="100%">	<!-- 공용 top head table -->
		<tr><td><tiles:insert attribute=""/></td></tr>
		<tr><td><tiles:insert attribute=""/></td></tr>
		<tr><td><tiles:insert attribute=""/></td></tr>
	</table>
	<table width="100%"> <!-- body table -->
		<tr>
			<td width="20%"><tiles:insert attribute=""/></td>	<!-- menu bar  -->
			<td><tiles:insert attribute=""></tiles:insert></td> <!-- main body -->
		</tr>
		
		<tr><td><tiles:insert attribute=""/></td></tr> <!-- 공용 footer -->
	</table>
</center>
</body>
</html>