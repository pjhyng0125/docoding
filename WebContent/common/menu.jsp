<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menu</title>
</head>
<%--menu.jsp --%>
<body>
<nav class="navbar navbar-expand-sm navbar-dark">
    <button class="navbar-toggler" data-toggle="collapse" data-target="#menuNavbar">
        <span class="navbar-toggler-icon" />
    </button>

    <div class="collapse navbar-collapse justify-content-center" id="menuNavbar">
        <ul class="nav navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/docoding/post/sellList.do?postName=Java">Java</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/docoding/post/sellList.do?postName=DB">DB</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/docoding/post/sellList.do?postName=JavaScript">JavaScript</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/docoding/post/sellList.do?postName=JSP">JSP</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/docoding/post/sellList.do?postName=jQuery">jQuery</a>
            </li>
            <li class="nav-item">
                    <a class="nav-link" href="/docoding/post/sellList.do?postName=free">자유게시판</a>
            </li>
        </ul>
    </div>
</nav>
</body>
</html>