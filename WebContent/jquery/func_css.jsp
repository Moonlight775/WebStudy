<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>func_css</title>
<script src='../lib/jquery-3.6.0.min.js'></script>
</head>
<body>
<div id='func_css'>
	<div>1</div>
	<div>2</div>
	<div>3</div>
	<div>4</div>
	<div>5</div>
	<div>6</div>
	<br/>
	<input type='button' value=' < ' id='btnLeft'>
	<input type='button' value=' > ' id='btnRight'>
</div>
<script>
	/* #func_css 안에 있는 모든 div의 display속성, width, height 속성 지정 */
	$('#func_css>div').css({
		'display' : 'inline-block',
		'width' 	: '130px',
		'height'  : '60px',
		'border'  : '1px solid #bbb'
	});
	
	var leng = $('#func_css>div').length; //func_css의 div요소의 개수를 leng이라는 변수에 저장 (6개)
	var index = leng; //div 개수를 index 저장
	$('#btnLeft').click(function(){ //btnLeft 버튼을 눌렀을 때 action
			var target = $('#func_css>div').get(index) //div의 요소들을 배열로 가져와서 인덱스 번째 div를 target에 저장
			$(target).css('background-color', '')  //해당 div 배경색을 제거.
		
			index--; //왼쪽 div로 이동하기 위해서 감소연산자 사용 & index의 값은 6이므로 감소연산자로 인해 index의 값은 5가 되고 끝 행을 가르키게 됨.
			if(index<0) index=leng-1; //인덱스의 값이 첫 번째 요소의 인덱스 값보다 작을때는 끝의 요소로 이동하기 위해서 leng-1(5번째 요소)을 씀
		
			var target = $('#func_css>div').get(index) 
			$(target).css('background-color', '#f0f') //선택된 요소에 배경 색을 줌 
	})
	
	$('#btnRight').click(function(){ //btnRight 버튼을 눌렀을 때 action
		var target = $('#func_css>div').get(index) 
		$(target).css('background-color', '')
		
		index++; //오른쪽 행으로 이동하기 위해 증가연산자 사용 & 증가연산자로 인해 index는 7이 되고 if문에 의해서 index는 0이 되어서 첫 번째 행을 가르키게 됨.
		if(index>=leng) index=0; // 인덱스 값이 leng(6)보다 커지면 해당 div 요소가 없으므로 0번째 인덱스로 이동시켜 끝 행에서 첫 번째 행으로 이동하게 해줌
		
		var target = $('#func_css>div').get(index)
		$(target).css('background-color', '#0ff') //선택된 요소에 배경 색을 줌
	})


</script>
</body>
</html>