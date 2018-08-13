<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<ul>
<html:link action="/mypage/modify"><button>회원정보 수정</button></html:link><br><br>

<%-- 아래 두가지 다 같은 방식 forward 값  / path 값 읽느냐 차이 --%>
<a href="/docoding/mypage/cash.do"><button>캐쉬충전 a</button></a><br><br>
<%-- <html:link action="/mypage/cash"><button>캐쉬충전 html</button><br></html:link> --%>

<html:link action ="/mypage/assign"><button>판매자 등록</button></html:link><br><br>

<html:link action ="/mypage/drop"><button>회원탈퇴</button></html:link><br><br>
<button>로그아웃</button>
</ul>