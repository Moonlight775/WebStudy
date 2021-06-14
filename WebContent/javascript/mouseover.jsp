<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>mouseover</title>
<style>
  #mouseover{
  	width: 600px;
  	margin: 30px auto;
  }
  #mouseover .imgs{
  	display: flex;
  	flex-direction: row;
  	gap: 5px;
  }
  #mouseover .imgs img{
  	width: 80px;
  	height: 80px;
  }
</style>
</head>
<body>
<div id='mouseover'>
<img src='http://placehold.it/510x400' id='here' width='510' height='400' onmouseout='hide'><br/>
<div class='imgs'>
  <img src='../imgs/camera.jpg' onmouseover='mover(0)'/>
  <img src='../imgs/doughnut.jpg' onmouseover='mover(1)'/>
  <img src='../imgs/igloo.jpg' onmouseover='mover(2)'/>
  <img src='../imgs/nightview.jpg' onmouseover='mover(3)'/>
  <img src='../imgs/waterfall.jpg' onmouseover='mover(4)'/>
  <img src='../imgs/house.jpg' onmouseover='mover(5)'/>
</div>
</div>
<script>
  var imgs = ['camera.jpg', 'doughnut.jpg', 'igloo.jpg', 'nightview.jpg', 'waterfall.jpg', 'house.jpg'];
  function mover(n){
	var here = document.getElementById('here');
	here.src = '../imgs/' + imgs[n];
  }
  function hide(){
	document.getElementById('here').src = '';
	
  }
</script>
</body>
</html>