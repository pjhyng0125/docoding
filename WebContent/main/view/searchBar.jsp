<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script>
$(function() {
		var languages = [ "Java","JavaScript","sql","xml","DB","jQuery"];
		$("[name='return search3']").click(function(){
				location.href="/docoding/post/sellList.do?postName="+$("[name=search2]").val();
		});
		
		$("#my-language").autocomplete({
			source : languages
		});
	});
</script>    
<div class="img-fluid" align="center">
	<img class="image" src="/docoding/image/base.png" style="height: 400px;width: 100%">
	<form class="example" style="margin:auto;max-width:400px">
  		<input type="text" placeholder="원하시는 자료를 검색 해 보세요." id="my-language" name="search2" > 		
  		<button type="button" name="return search3" style="background-color: #00498c">검색</button>
	</form>
</div>


