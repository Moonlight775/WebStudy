<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>val_html_text</title>
<script src='../lib/jquery-3.6.0.min.js'></script>
<style>
#result{
	height: 200px;
	border: 2px solid #aaa;
}
</style>
</head>
<body>
<div id='val_html_text'>
	<input type='button' value='val' id='val_btn'/>
	<input type='button' value='html' id='html_btn'/>
	<input type='button' value='text' id='text_btn'/>

	<div id='result'></div>
</div>
<script>
	$(document).ready(
			function(){
				$btn = $('#val_btn');
				var v = $btn.attr('value') + "," + $btn.attr('type');
				$btn.click(function(){
					$btn.attr('value','after val');
				});
				
				$('#html_btn').click(function(){
					var str = '<font color=red>Pop up</font>';
					$('#result').html(str);
				});
				
				$('#text_btn').click(function(){
					var str = '<font color=blue>Boo</font>';
					$('#result').text(str);
				});
			});
</script>
</body>
</html>