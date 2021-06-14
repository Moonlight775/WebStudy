<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>forin</title>
</head>
<body>
<div id='for in'>
  <script>
    var array = [234,546,896,62345,1234,123,21,734,23];
    var sum=0;
    var avg=0;
    var length = array.length; //배열의 개수
    for(var i in array){
    	sum += array[i];
    }
    avg = sum / length;
    
    console.log("합계:" + sum);
    console.log('평균:' + avg);
  	console.log(array);
  	console.table(array);
  </script>

</div>
</body>
</html>