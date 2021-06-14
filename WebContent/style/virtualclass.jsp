<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>virtual_class</title>
<style>
	*{
	  margin:0;
	  padding:0;
	  box-sizing: border-box;
	}
	#virtual_class .wrapper{
		margin-top: 60px;
		margin-left: 100px;
		width:75%;
		height:300px;
	}
	#virtual_class .menu {
		width:100%;
		height:30px;
		padding : 4px;
		background-color: #35354d;
		box-shadow:2px 2px 3px 0px #aaa;
		border-radius: 4px;
		display:inline-flex;
	}
	
	#virtual_class .wrapper .menu>div{
		height: 160px;
		flex:1;
	}
	
	#virtual_class .wrapper .menu>div>.top{
		height: 22px;
		color:#ffbb93;
		text-align: center;
		border-radius: 4px;
	}
	
	#virtual_class .wrapper .menu .sub ul{
		list-style: none;
		text-align: center;
		margin: 1px auto;
		height: 140px;
		border: 1px solid black;
		color:#bd9090;
		background: #dbd7d491;
		display: none;
	}
	#virtual_class .wrapper .top:hover>.sub ul{
		display: block;
	}
	#virtual_class .wrapper .top:hover>.sub ul>li:hover{
		background:#bdbdbd;
		color:white;
	}
</style>
</head>
<body>

<div id='virtual_class'>
	<h2>가상 클래스, 요소를 사용한 메뉴 설계</h2>
	<div class='wrapper'>
		<div class='menu'>
			<div class='menu_1'>
				<div class='top'>MENU1
					<div class='sub'>
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
							<li>sub4</li>
							<li>sub5</li>
							<li>sub6</li>
						</ul>
					</div>
				</div>
			</div>
			<div class='menu_2'>
				<div class='top'>MENU2
					<div class='sub'>
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
							<li>sub4</li>
							<li>sub5</li>
							<li>sub6</li>
						</ul>
					</div>
				</div>
			</div>				
			<div class='menu_3'>
				<div class='top'>MENU3
					<div class='sub'>
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
							<li>sub4</li>
							<li>sub5</li>
							<li>sub6</li>
						</ul>
					</div>
				</div>
			</div>
			<div class='menu_4'>
				<div class='top'>MENU4
					<div class='sub'>
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
							<li>sub4</li>
							<li>sub5</li>
							<li>sub6</li>
						</ul>
					</div>
				</div>
			</div>
			<div class='menu_5'>
				<div class='top'>MENU5
					<div class='sub'>
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
							<li>sub4</li>
							<li>sub5</li>
							<li>sub6</li>
						</ul>
					</div>
				</div>
			</div>
			<div class='menu_6'>
				<div class='top'>MENU6
					<div class='sub'>
						<ul>
							<li>sub1</li>
							<li>sub2</li>
							<li>sub3</li>
							<li>sub4</li>
							<li>sub5</li>
							<li>sub6</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>