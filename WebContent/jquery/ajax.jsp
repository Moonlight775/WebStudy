<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
	<meta charset="UTF-8">
	<meta name='viewport' content='width=device-width, initial-scale=1.0'>
	<link rel='stylesheet' href='https://code.jquery.com/ui/1.12.1/themes/overcast/jquery-ui.css'> <!-- 2 -->
	<script src='../lib/jquery-3.6.0.min.js'></script> <!-- 1 -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> <!-- 3 -->
	<title>ajax(jquery)</title>
</head>
<body>
<div id='ajax'>
	<input type='button' value='RUN' id='btnRun'/><br/>
	<div id='result'></div>

</div>
<script>
$('#btnRun').click(function(){
	$.ajax({
		'type' 	 : 'post',
		'url'  	 : '../ajax/json_data.jsp',
		dataType : 'json',
		success  : function(html, status){
			var str = '';
			for(var i=0; i<html.length; i++){
				var item = html[i];
				str += item.mid + "," + item.mname + "," + item.phone;
				str += "<br/>";
				$('#result').append(str);
			}
		}
	})
})

</script>
</body>
</html>