<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>가상클래스</title>
<style>
	*{
		margin:0;
		padding:0;
		box-sizing:border-box;
	}
	#virtual_class .menu, .submenu{
		margin:0;
		padding:0;
		list-style:none;
	}
	.menu li{
		float:left;
		border:1px solid orange;
	}
	#menu li a{
		display:block;
		padding 8px 16px;
		text-align:center;
		font-size:medium;
		color:#000;
		text-decoration:none;
		
	}
	


</style>
</head>
<body>
<div id='virtual_class'>
	<h1>가상 클래스, 요소를 사용한 메뉴 설계</h1>
    <div id='menu'>
    	<ul class='menu'>
        	<li><a href='#'>MENU1</a>
            	<ul class='submenu'>
      				<li><a href='#'>부메뉴1 </a></li>
                    <li><a href='#'>A </a></li>
                    <li><a href='#'>B </a></li>
                    <li><a href='#'>C </a></li>                      
       			</ul>
			</li>

    		<li><a href='#'>MENU2 </a>
    			<ul class='submenu'>
		       		<li><a href='#'>부메뉴2 </a></li>
			        <li><a href='#'>A</a></li>
			        <li><a href='#'>B</a></li>      
        		</ul>
     		</li>
   <li><a href='#'>MENU3</a></li>
   
   <li><a href='#'>MENU4</a></li>
   
   <li><a href='#'>MENU5</a></li>
         </ul>
    </div>
</div>
</body>
</html>