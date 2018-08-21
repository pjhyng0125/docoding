<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>    
<script>
	$(function() {
		var languages = [ "Java","JavaScript","sql","xml","DB","DataBase","jQuery"];
		

		$("#my-language").autocomplete({
			source : languages
		});
	});
</script>    
    
<div class="img" align="center">
	<img class="image" src="/docoding/image/base.png">
	<form class="example" action="/action_page.php" style="margin:auto;max-width:400px">
  		<input type="text" placeholder="Search.." id="my-language" name="search2" > 		
  		<button type="submit" name="return search3">검색</button>
	</form>
</div>


