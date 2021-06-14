<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>hap</title>
<style>
  #hap{
  	width: 200px;
  	margin: 0 auto;
  	border: 2px solid #aaa;
  	padding: 0 20px;
  	box-shadow: 2px 2px 4px 2px #888;
  	background-color: #aad9ffcf;
  }
  #hap h2{
  	border-bottom: 2px dotted #aaa;
  }
  #hap input{
  	width: 150px;
  	height: 20px;
  	margin: 5px;
  }
  #hap input[type=submit]{
  	width: 60px;
  	height: 30px;
  	margin-top:5px;
  }
  
</style>
</head>
<body>
<div id='hap'>
  <h2>합 계산</h2>
  <form name='frm' method='get' action='hap_result.jsp'>
  	<label>수1</label>
  	<input type='text' name='su1'/>
  	<br/>
  	<label>수2</label>
  	<input type='text' name='su2'/>
  	<br/>
  	<input type='submit' value='전송'/>
  
  
    </form>
</div>
</body>
</html>