<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>postList</title>
<script type="text/javascript" src="/docoding/js/jquery-3.3.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<script type="text/javascript">
	$(function() {
		// 파라미터 받기 
		var postName = "${param.postName}" //java, js, 자유게시판,...
		var action = "${param.action}" // list or searchlist
		var order = "${param.order}" // 조회순, 날짜순
		var page = "${param.page}" //페이지 번호
		var data;
		var url;
		var option = "${param.option}";
		var searchTxt= "${param.searchTxt}";
		
		if(postName=="") postName="Java"
		if(order=="") order=0
		if(page=="") page=1	
		if(action=="") action="list"
	
		if(action=="list"){
			data = {
				postName : postName,
				action : action,
				order: order,
				page: page
			};
		}else if(action=="search"){
			data = {
				postName : postName,
				action : action,
				order: order,
				page:page,
				option: "${param.option}",
				searchTxt:"${param.searchTxt}"
			}
		}
		
		if(postName=="free"){
			url="/docoding/post/result/freeList.do"
		}else{
			url="/docoding/post/result/sellList.do"			
		}
		
		$.ajax({
			url : url,
			success : function(result) {
				$('#postList').html(result);
			},
			data : data,
			error : function(xhr, status, error) {
				alert('서버에러!!');
				alert('상태: ' + xhr.status + ', 상태text: ' + xhr.statusText
						+ '\nstatus: ' + status + '\nerror: ' + error)
			}//에러 콜백
		})
		
		//아이디 또는 제목 검색
		$('#postList').on('click', 'div[name=searchBtn]', function() {
			option = $('select option:selected').val(); //아이디 또는 제목
			searchTxt = $('#searchTxt').val(); //검색명
			urlToList()
			
			alert(option);
			location.href = url+"?postName="+postName+"&action=search&order=0&page=1&option="+option+"&searchTxt="+searchTxt;
		})
		
		//클릭한 게시물 확인############################################
		$('#postList').on('click','tr',function(){
			var no = $(this).find(':hidden').val();
			urlToContent();
			
			if(action=="search"){
				location.href = url+"?postName="+postName+"&action=selectContent&order="+order+"&page="+page+"&option="+option+"&searchTxt="+searchTxt+"&no="+no;									
			}else{
				location.href = url+"?postName="+postName+"&action=selectContent&order="+order+"&page="+page+"&no="+no;					
			}
		})
		
		//글쓰기####################################################
		
		$('#postList').on('click','#createPost',function(){
			if(postName=="free"){
			location.href = "/docoding/free.do";						
			}else{
			location.href = "/docoding/input.do";						
			}
		})
		
		//사진 퍼가기 방지##############################################
		$('#postList').on('contextmenu','img',function(){
			alert('우클릭을 할 수 없습니다!')
			return false;
		})

		$('#postList').on('selectstart','img',function(){
			return false;
		})
		
		$('#postList').on('dragstart','img',function(){
			return false;
		})
		
		
		
		function urlToContent(){
			if(postName=="free"){
				url="/docoding/post/freeContent.do"
			}else{
				url="/docoding/post/sellContent.do"			
			}
		}
		
		function urlToList(){
			if(postName=="free"){
				url="/docoding/post/freeList.do"
			}else{
				url="/docoding/post/sellList.do"			
			}
		}
	})

</script>
<style>
#list {
	text-align: center;
}

/* Bootstrap 수정 */
.table>thead {
	background-color: #b3c6ff;
}

.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}

.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}

#orderNav {
	margin: 0px;
	height: 30px;
}

tr img {
	display: block;
	width: 100%;
}

.pagination {
	justify-content: center;
}
#category:link {
	color: black;text-decoration: none;
}
#category:visited {
	color: black; text-decoration: none;
}
</style>
</head>
<%--postList.jsp --%>
<body>
	<div id="postList" class="container"></div>
</body>
</html>