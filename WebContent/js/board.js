/**
 * 게시판 
 */
var brd = {};

brd.init = function(){
	$('#board #btnFind').on('click', function(){
		var frm = $('#frm_board')[0];
		frm.nowPage.value = 1;
		var param = $(frm).serialize();
		$('#board').load('./board.do', param);
	})
	
	$('#board #btnSearch').on('click', function(){
		var frm = $('#frm_board')[0];
		
		//내용입력폼과 파일 업로드폼이 분리되지 않아서...
		if(frm.serial.value=='') frm.serial.value = 0;
		if(frm.nowPage.vlaue=='') frm.nowPage.value = '1';
		
		var param = $(frm).serialize();
		$('#board').load('./board.do?job=search', param);
	})
	
	$('#board #btnInsert').on('click', function(){
		var frm = $('#frm_board')[0];
		var param = $(frm).serialize();
		$('#board').load('./board/register.jsp', param);
	})
	
	$('#board #btnInsertR').on('click', function(){
		var frm = $('#frm_board')[0];
		
		// 내용입력폼과 파일 업로드폼이 분리되지 않아서...
		if(frm.findStr.value == '') frm.findStr.value = ' ';
		if(frm.serial.value == '') frm.serial.value = 0;
		if(frm.nowPage.value == '') frm.nowPage.value = '1';
		
		var data = new FormData(frm);
		
		$.ajax({
			type 		: 'POST',
			url  		: './boardUpload.do?flag=insert',
			enctype  : 'multipart/form-data',
			data 		: data,
			contentType : false,
			processData : false,
			success : function(resp){
				$('#board').load('./board.do');
			}
		});
	});
	
	$('#board #btnModify').on('click', function(){
		var frm = $('#frm_board')[0];
		var param = $(frm).serialize();
		$('#board').load('./board/modify.jsp', param);
	})
	
	$('#board #btnRepl').on('click', function(){
		var frm = $('#frm_board')[0];
		var param = $(frm).serialize();
		$('#board').load('./board/repl.jsp', param);
	})
	
	$('#board #btnDelete').on('click', function(){
		var frm = $('#frm_board')[0];
		var param = $(frm).serialize();
		$('#board').load('./board/delete.jsp', param);
	})
	
}

brd.view = function(serial){
	var frm = $('frm_board')[0];
	var param = $(frm).serialize();
	$('#board').load('./board/view.jsp', param);
}

brd.move = function(nowPage){
	var frm = $('#frm_board')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	
	$('#board').load('./board.do', param);
}

/**
 * file태그에 의해 선택된 이미지 미리보기
 */

function imageView(fileTag, imageZone){
	var ft = document.getElementById(fileTag);
	var izone = document.getElementById(imageZone);

  ft.onchange = function(ev){
		var ele = ev.srcElement;//이벤트가 발생한 테그
		var files = ele.files;
		for(var index in files){ //in-모든 내용, of-배열안에 내용만
			//console.table(files[index]);
		}
	
	for(var file of files){
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(ev2){
				var div = makeItem(izone);
				var img = new Image();
				img.src = ev2.target.result;
				
				div.appendChild(img);
				izone.appendChild(div);
			}
		}
		
	} // end of ft.onchage

	//drag & drop 기능 추가
	izone.ondragenter = function(e){
		e.preventDefault();
		e.stopPropagation();
		return false;
	}
	
	izone.ondragover = function(e){
		e.preventDefault();
		e.stopPropagation();
		return false;
	}
	
	izone.ondrop = function(e){
		e.preventDefault();
		e.stopPropagation();
		
		var dt = e.dataTransfer;
		var files = dt.files;
		
		for(var file of files){
		var reader = new FileReader();
		reader.readAsDataURL(file);
		reader.onload = function(ev2){
		  var div = makeItem(izone);
		  var img = new Image();
		  img.src = ev2.target.result;

		  div.appendChild(img);
		  izone.appendChild(div);
			
	  }
	}
  }
}

function makeItem(izone){
	//div 태그 생성<div class='item'></div>
	var div = document.createElement('div');
	div.setAttribute('class', 'item');
	
	// 삭제버튼 : <input type='button' value='x' class='del_btn' name='btnDel+ N'/>
	var delBtn = document.createElement('input');
	delBtn.setAttribute('type', 'button');
	delBtn.setAttribute('value', 'x')
	delBtn.setAttribute('class', 'del_btn')
	delBtn.setAttribute('name', 'btnDel')
	
	div.appendChild(delBtn);
	
	delBtn.onclick = function(){
		var p = this.parentNode;
		izone.removeChild(p);
	  
	}
	return div;
	
}




