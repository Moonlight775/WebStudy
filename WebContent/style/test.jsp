<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang= "ko">
 <head>
  <meta charset="utf-8">
  <meta name='viewport' content='width=device-width, initial-scale=1.0'>
  
  <title> menu-click시 남아있게 </title>
  <style>
  a:link{ color:#4f4f4f; text-decoration:none;}
a:visited{color:#8a8e91;text-decoration:none;}
a:hover, a:focus{color:#ff0000; text-decoration:none;}
/* 기본 스타일 */
body{color:#000;font-size:0.75em; line-height:1.2; font-family:'nanum';}
#header{width:940px; height:110px; background:pink;  margin:0 auto;}
h1{float:left;}
/* 메인 메뉴 */
.menu{float:right; width:600px; height:50px;}
.menu li{float:left; width:150px; text-align:center;line-height:40px; }
.menu a{color:white; text-decoration:none; background:#CEECF5; display:block; transition:all 2s; }
.menu a:hover{background:#5882FA; color:white; display:block;}
/**menu 풀다운시 **/
.menu li .submenu{width:150px; height:40px; display:none;}
.menu li:hover .submenu{display:block;}
/*menu click시 서브메뉴고정되고 다음메뉴 클릭시 사라지게 */
.menu>li>a:focus + .submenu{display:block;}
  
  </style>
 </head>
 <body>
  <header id="header">
           <h1>요기로고</h1>
            <ul class="menu">
              <li><a href="#">프로젝트1 </a>
                    <ul class="submenu">
      <li><a href="#">포토샵 </a></li>
                        <li><a href="#">일러스트 </a></li>
                        <li><a href="#">웹표준코딩 </a></li>
                        <li><a href="#">에프터이펙트 </a></li>                      
       </ul>
    </li>

    <li><a href="#">프로젝트2 </a>
      <ul class="submenu">
       <li><a href="#">html5 </a></li>
       <li><a href="#">css3</a> </li>
       <li><a href="#">jquery</a> </li>      
        </ul>
     </li>
   <li><a href="#">프로젝트3</a>
      <ul class="submenu">
       <li><a href="#">웹디포폴 </a></li>
       <li><a href="#">웹퍼블리셔</a> </li>
       <li><a href="#">영상포폴</a> </li>      
        </ul>
   </li>
      <li><a href="#">프로젝트4</a>
      <ul class="submenu">
       <li><a href="#">웹디포폴2 </a></li>
       <li><a href="#">웹퍼블리셔2</a> </li>
       <li><a href="#">영상포폴2</a> </li>      
        </ul>
   </li>
       </ul>
   </header>
 </body>
</html>


