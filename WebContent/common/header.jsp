<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<script type="text/javascript" src="/docoding/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<%--header.jsp --%>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark" id="nav">
            <a href="/docoding/main.do" class="navbar-brand">
                <img src="/docoding/img/play_data_white.png" alt="playdata">
            </a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#myNavbar">
                <span class="navbar-toggler-icon"/>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="/docoding/mypage.do">마이페이지</a></li>
                    <li class="nav-item"><a class="nav-link" href="">고객센터</a></li>
                </ul>
            </div>
        </nav>
</body>
</html>