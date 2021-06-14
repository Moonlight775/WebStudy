<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>load_json</title>
</head>
<body>
<div id='load_json'>
	<h2>Load JSON</h2>
	<input type='button' id='btnJson' value='Load JSON'/>
	<div id='result'></div>
</div>
<script>
	var btn = document.getElementById('btnJson'); // = $('#btnJson')
	var rs = document.getElementById('result'); 	// = $('#result')
	
	var xhr = new XMLHttpRequest(); //-> open -> send -> 핸들러
	btn.onclick = function(){
		xhr.open('get', 'json_data.jsp');
		xhr.send(); //= xhr.send(null); or xhr.send('');
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				var data = xhr.responseText; //html, jsp, text, ... 는 responseText 사용
				var json = JSON.parse(data);
				var str = '';
				console.log(data);
				console.log(json);
				
				for(var i=0; i<json.length; i++){
					str  += '<li>mid : '  + json[i].mid
							 + '<li>mname : ' + json[i].mname
							 + '<li>phone : ' + json[i].phone
							 + '<hr/>';
				}
				rs.innerHTML = str;
			}
		}
	}
</script>
</body>
</html>