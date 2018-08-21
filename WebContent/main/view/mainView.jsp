<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>홈</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/docoding/css/main.css">
    <script type="text/javascript" src="/docoding/js/main.js"></script>
</head>
<%-- mainView.jsp --%>
<body>
	<center>
		<table width="100%">
			<tr id="tr1">
				<td colspan="2"><tiles:insert attribute="searchBar"/></td>
			</tr>
			<tr id="tr2">
				<td width="50%" align="right"><tiles:insert attribute="adver"/></td>
				<td><tiles:insert attribute="login"/></td>
			</tr>
 			<tr id="tr3">
				<td colspan="2" width="100%"><tiles:insert attribute="category" /></td>
			</tr> 			
		</table>
	</center>
</body>
</html>