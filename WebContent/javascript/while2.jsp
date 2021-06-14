<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>while2</title>
</head>
<body>
<div id='while2'>
	<fieldset>
		<legend>while example</legend>
		<div>
		  두 수 x, y를 입력받아 두 수 사이의 수 중 4또는 7의 배수의 갯수를 출력하시오.
		</div>
	</fieldset>
	<div class='body'>
		<label>X</label>
		<input type='text' id='x' value='1'/>
		<br/>
		<label>Y</label>
		<input type='text' id='y' value='100'/>
		<br/>
		<input type='button' id='btn' value='실행'/>
		<div id='result'></div>
	
	</div>

</div>
<script>
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
	var start= 0; //x,y중에 항상 작은 값
	var end= 0; //x,y중에 항상 큰 값
	var count = 0; //배수의 개수
	
	btn.onclick = function(){
		count=0;
		var x = Number(document.getElementById('x').value);
		var y = Number(document.getElementById('y').value);
		start = (x<y)? x : y;	//if(x>y){start=y; end=x;}else{start=x; end=y;}
		end   = (x>y)? x : y; 
			
		while(start<=end){
			if(start%4==0 || start%7==0){
				count++;
			}
			start++;
		}
		result.innerHTML = '4또는 7의 배수의 개수 : ' + count;
	}



</script>
</body>
</html>