<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>json_data_form</title>
<style>
#wrapper{margin: 0 auto;
	width: 500px;
	height: 300px;}

.result {
    width : 405px;
    height : 150px;
    margin-top : 5px;
	border-radius: 3px;
	box-shadow: 2px 2px 3px 1px #805858;
}

input[type=button]{
	width:55px;
	height: 25px;
	background:#e6dfdfc7;
	border-radius:3px;
	border: outset;
	text-shadow: 0px 0px 3px #884747;
	font-weight: 700;
	color: #ffffff;
	border-bottom-color:#ffbbbb;
	border-right-color:#ffbbbb;
}
label{
    color: #ffffff;
    text-shadow: -1px -1px 5px #964848;
    background:linen;
}


input[type=button]:hover{
	cursor: pointer;
}

input[type=button]:active{
	border: orchid;
}

input[type=text]:visited{
	background: red;
	color:red;
}

input[type=text]{
	border-radius: 5px;
	width:280px;
	border: 1px solid #7979797d;
	box-shadow: 0px 0px 2px 0px #c18e8e;
}

</style>
</head>
<body>
<div id='wrapper'>
 <div class='input_zone'>
 	<form name='frm' method='post'>
 		<label>검색어</label>
 		<input type='text' size='40' name='findStr'>
 		<input type='button' value='검색' id='btnFind'>
 	</form>
 
 </div>
 <div class='result'>
 
 
 </div>
</div>
<script>
var frm = document.frm;
var btn = document.getElementById('btnFind');
var input = frm.findStr;

input.onkeyup = funckey;

btn.onclick = funcFind;

var xhr = new XMLHttpRequest();
var rs = document.getElementsByClassName('result')[0];
function funcKey(ev){
	if(ev.keyCode==13){
		funcFind();
	}	
}

function funcFind(){
	var url='json_form_result.jsp'
	var data={};
	data.findStr = frm.findStr.value;
	
	var param = JSON.stringify(data);
	console.log(param)
	
	url = url + "?findStr=" + frm.findStr.value;
	
	xhr.open('get',url)
	xhr.send()
	xhr.onreadystatechange = function(){
		if(xhr.status==200&&xhr.readyState==4){
			var temp = xhr.responseText;
			var json = JSON.parse(temp);
		}
		
	}
	
}


</script>

</body>
</html>