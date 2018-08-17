<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>postList</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
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
		var action = "${param.action}"
		var order = "${param.order}"
		var page = "${param.page}"
		
		if(order=="") order=0
		if(page=="") page=1
		if(action=="") action="list"
		$.ajax({
			url : "/docoding/post/result/postList.do",
			success : function(result) {
				$('#postList').html(result);
			},
			data : {
				action : action,
				order: order,
				page: page
			},
			error : function(xhr, status, error) {
				alert('서버에러!!');
				alert('상태: ' + xhr.status + ', 상태text: ' + xhr.statusText
						+ '\nstatus: ' + status + '\nerror: ' + error)
			}//에러 콜백
		})

		
		//아이디 또는 제목 검색
		$('#postList').on('click', 'div[name=searchBtn]', function() {
			var option = $('select option:selected').val(); //아이디 또는 제목
			var searchTxt = $('#searchTxt').val().toUpperCase(); //검색명
			
			
			alert(option);
		
			$.ajax({
				url : "/docoding/post/result/postList.do",
				success : function(result) {
					$('#postList').html(result);
				},
				data : {
					action : "search",
					order:order,
					option : option,
					searchTxt : searchTxt,
					page: page
				},
				error : function(xhr, status, error) {
					alert('서버에러!!');
					alert('상태: ' + xhr.status + ', 상태text: ' + xhr.statusText
							+ '\nstatus: ' + status + '\nerror: ' + error)
				}//에러 콜백
			})
/* 			if (option == '아이디') {
				$('#tbody #sp_id').filter(function() {
					var txt = $(this).text().toUpperCase();
					$(this).parent().toggle(txt.indexOf(searchTxt) > -1)
				})
			} else {
				$('#tbody #title').filter(function() {
					var txt = $(this).text().toUpperCase();
					$(this).parent().toggle(txt.indexOf(searchTxt) > -1)
				})
			} */
		})
		
		//클릭한 게시물 확인
		$('#postList').on('click','tr',function(){
			var no = $(this).find(':hidden').val();
			location.href = "/docoding/post/result/postContent.do?action=selectContent&page="+page+"&order="+order+"&no="+no;		
		})
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

nav {
	margin: 0px;
	height: 30px;
}

tr img {
	display: block;
	width: 100%;
	height: auto;
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