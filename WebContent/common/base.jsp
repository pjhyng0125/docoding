<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/docoding/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style type="text/css">
#menuNavbar {
    height: 43px;
    position: relative;
    clear: both;
    background-color: #496abc;
}
#menuNavbar a{
 
}

.footer {
    position: absolute;
    bottom: 0px;
}

#tilesTable{
	margin-bottom: 100px;
}

</style>

</head>
<body>
<table width="100%" id="tilesTable" height="100%">   
<tr ><td ><tiles:insert attribute="header"/></td></tr>
<tr ><td ><div></div></td></tr>
<tr ><td ><tiles:insert attribute="menu"/></td></tr>
<tr ><td ><tiles:insert attribute="body"/></td></tr>
<tr ><td ><tiles:insert attribute="footer"/></td></tr>
</table>

</body>
</html>