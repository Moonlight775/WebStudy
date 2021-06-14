<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>array_sort</title>
</head>
<body>
<div id='array_sort'>
	<fieldset>
		<legend>배열 정렬</legend>
		<div>
		  자바스크립트의 sort()함수는 기본적으로 정렬 시 문자열로 인식하여 정렬하게 됨.
		  따라서 숫자형 데이터형으로 정렬하기 위해서는 사용자가 정렬 방식을 sort()함수의
		  매개변수로 전달해 주어야 함.
		</div>
	</fieldset>
<script>
	var su = [126,7654,4452,567,678,35,321,6789,6,4,532,54,87,9855,2345,323,983];
	su.sort(my); //함수 호출 시 함수명만 갖고 호출하는 경우를 call back 유형으로 호출한다고 이야기함. 
	//소괄호 없이 정의되는 함수를 콜백함수라 함. 보통은 my()여야 하나 ()생략.
	
	console.log(su);
	
	su.reverse();
	console.log("reverse 후 : " + su);
	//bubble sort방식
	function my(x,y){
		var a = Number(x);
		var b = Number(y);
		return b-a; //a-b는 오름차순, b-a는 내림차순
	}



</script>


</div>
</body>
</html>