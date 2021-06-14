<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
	<meta charset="UTF-8">
	<meta name='viewport' content='width=device-width, initial-scale=1.0'>
	<title>텍스트 스타일</title>
	<style>
		/*text-shadow안에 있는 문자의 색상과 크기를 변경 */
		#text #text-shadow{
			color:#0000ff;
			font-size:60pt;
			font-weight:bold;
			text-shadow:10px 10px 10px #000000;
		}
		
		#white-space div{
			border:1px solid #aaaaaa;
			padding:10px;
			width:800px;
			margin:10px;
		}
		
		#white-space .type1{
			white-space:nowrap;
			overflow:hidden;
			text-overflow:ellipsis;
		}
		
		#white-space .type1:hover{
			overflow:visible;
		}
		#white-space .type2{
			white-space:pre-line;
		}
		#white-space .type3{
			white-space:pre-wrap;
		}
		
		#line-height{
			border:2px solid #888;
			width:300px;
			height:250px;
			font-size:4em;
			/*padding-top:80px;*/
			line-height:250px;
			box-sizing:border-box;
		}	
	</style>
</head>
<body>
<div id='text'>
	<h1>text-shadow</h1>
	<div id='text-shadow'>
		홍길동
	</div>
	
	<div id='white-space'>
		<div class='type1'>
			바로 얼마나 커다란 위하여서 가진 용기가 귀는 별과 봄바람이다. 
			거선의 열락의 우리는 뼈 힘차게 가장 방황하여도, 찬미를 봄바람이다. 
			그들에게 이것을 청춘 청춘이 갑 청춘의 앞이 있는 그림자는 때문이다. 
			위하여 얼음과 이것을 철환하였는가? 
		</div>
		<div class='type2'>
			따뜻한 용감하고       가지에 기관과 부패뿐이다. 바이며, 인간의 풀이 
			이는 못할 것은           하는 목숨이 주는 것이다. 위하여 타오르고 싶이 
			사랑의 새가 아니한 이상 약동하다. 생생하며, 것은 얼음과 그들은
			 장식하는 고동을 것은 불어 약동하다. 
		</div>
		<div class='type3'>
			얼마나 그들에게 되려니와, 위하여서. 있는 청춘은 이상의 이것을 것이다.
			 얼마나 갑 청춘은              그림자는 사람은 풀이 대한 얼음에 듣는다. 
			 못할 낙원을 대한 끓는 약동하다. 가치를 뜨고, 인간은 피다. 
			 새가 거선의 생생하며, 봄바람이다. 너의 되려니와, 시들어 이것을 
			 앞이 평화스러운 것이다. 미인을 것은 사라지지 가치를 열락의 우리 칼이다.
		</div>
	</div>
	
	<div id='line-height'>
		김길동
	</div>
</div>

</body>
</html>