<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<script src='../lib/jquery-3.6.0.min.js'></script>
<title>show_hide</title>
</head>
<body>
<div id='show_hide'>
	<input type='button' id='show' value='show'/>
	<input type='button' id='show_fast' value='show(fast)'/>
	<input type='button' id='show_slow' value='show(slow)'/>
	<input type='button' id='show_custom' value='show(custom)'/>
	<br/>
	<input type='button' id='hide' value='hide'/>
	<input type='button' id='hide_fast' value='hide(fast)'/>
	<input type='button' id='hide_slow' value='hide(slow)'/>
	<input type='button' id='hide_custom' value='hide(custom)'/>
	<br/>
	<input type='button' id='slide_up' value='slide_up'/>
	<input type='button' id='slide_down' value='slide_down'/>
	<input type='button' id='slide_toggle' value='slide_toggle'/>
	<br/>
	<div id='target'>
		
		같지 불어 그들은 눈에 내려온 철환하였는가?
		그들은 눈에 영락과 역사를 봄바람을 가는 가슴이 것이다.
		그들은 가진 못하다 있으랴? 보내는 인류의 그들은 같은 가치를 동력은 방황하여도, 있는가?
		이것은 물방아 같지 방황하였으며, 가진 만물은 이것이다. 피어나는 오직 거친 것이 장식하는 아니다.
		천하를 이상이 불어 것이다. 그들에게 얼마나 오아이스도 곳으로 있으며, 풍부하게 미인을 수 쓸쓸하랴?
		설산에서 불어 것이 것은 커다란 대한 미묘한 가는 교향악이다.
	
	</div>
	
</div>
<script>
	$('#show_hide').css({
		'width' : '500px',
		'margin': '50px auto'
	})
	$('#target').css({
		'border' : '2px solid #aaa',
		'padding' : '20px',
		'box-sizing' : 'border-box',
		'margin' : '30px'
	})
	
	$('#hide').click(function(){	$('#target').hide();	})
	$('#show').click(function(){  $('#target').show();  })
	
	$('#hide_slow').click(function(){	 $('#target').hide('slow');	})
	$('#show_slow').click(function(){  $('#target').show('slow'); })
	
	$('#hide_fast').click(function(){	 $('#target').hide('fast');	})
	$('#show_fast').click(function(){  $('#target').show('fast'); })
	
	$('#hide_custom').click(function(){	 $('#target').hide(3000);	})
	$('#show_custom').click(function(){  $('#target').show(3000); })
	
	$('#slide_up').click(function(){  $('#target').slideUp(1000); })
	$('#slide_down').click(function(){  $('#target').slideDown(1000); })
	$('#slide_toggle').click(function(){  $('#target').slideToggle(1000); })
	
</script>
</body>
</html>













