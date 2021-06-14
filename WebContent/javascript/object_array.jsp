<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>object_array</title>
<style>
  *{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
  }
  #object_array h2{
  	padding-bottom: 20px;
  	text-align: center;
  }
  #object_array{
  	width: 760px;
  	height: 300px;
  	padding: 20px;
  	border: 2px solid #aaa;
  	box-shadow: 2px 2px 4px 2px #888;
  	position: relative;
	position: absolute;
	top: 30%;
	left: 30%;
  }
  .left{
  	width: 330px;
  	height: 180px;
  	border: 2px solid #aaa;
  	padding: 20px;
  	float: left;
  	box-shadow: 1px 1px 2px 1px #888;
  }
  
  .right{
  	width: 330px;
  	height: 180px;
  	border: 2px solid #aaa;
  	padding: 20px;
  	float: left;
  	margin-left: 20px;
  	box-shadow: 1px 1px 2px 1px #888;
  	text-align: left;
  }
  .right .items{
  	height: 100px;
  	overflow-y: scroll;
  }
  #object_array .left input[type=text]{
  	margin: 5px;
  	width: 150px;
  }
  #object_array .left label{
  	display: inline-block;
  	width: 50px;
  }
  #object_array .right .title span, #object_array .right .items span{
  	display: inline-block;
  	width: 130px;
  	line-height: 25px;
  	text-align: center;
  }
  #object_array .title{
  	background-color: #ddd;
  }
  #object_array .left #btn_zone{
  	
  }
  #object_array #btnList{
  	margin: 190px 0 5px 0;
  }

</style>
</head>
<body>
  <div id='object_array'>
	<h2>Object와 배열을 사용한 응용예</h2>
	<div class='left'>
	  <form name='frm' method='post' action=''>
		<label>아이디</label>
		<input type='text' name='mid'/>
		<input type='button' value='검색' id='btnFind'/>
		<br/>
		<label>성명</label>
		<input type='text' name='mname' id='mname'/>
		<br/>
		<div id='btn_zone'>
		<input type='button' value='저장' id='btnSave'/>	  
		<input type='button' value='삭제' id='btnDelete'/>	  
		<input type='button' value='수정' id='btnModify'/>	  
		</div>
	  </form>
	</div>
	<div class='right'>
	  <div class='title'>
	  	<span class='mid'>아이디</span>
	  	<span class='mname'>성명</span>
	  </div>
	  <div class = 'items'>
	  	<div class='item'>
	  		<span class='mid'>Hong</span>
	  		<span class='mname'>홍길동</span>
	  	</div>
	  	<div class='item'>
	  		<span class='mid'>Kim</span>
	  		<span class='mname'>김길동</span>
	  	</div>
	  	<div class='item'>
	  		<span class='mid'>Park</span>
	  		<span class='mname'>박길동</span>
	  	</div>
	  </div>
	</div>
	  <input type='button' value='출력' id='btnList'/>	


  </div>
  <script src='object_array.js'></script>
</body>
</html>