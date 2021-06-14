/**
 * 제품관리에 사용되는 스크립트
 */
//객체 생성방법 : {} 객체 리터럴 사용, Object(), function 정의, class정의 
var product={}; //리터럴 형태 객체
product.init = function(){
	
	$('#checkAll').on('click', function(){
		var chk = document.frm_product.gubun;
		
		for(var i of chk){
			i.checked = this.checked;
		}
	});
	
	$('#btnFind').on('click', function(){
		document.frm_product.nowPage.value=1;
		var param = $('#frm_product').serialize();
		$('#product').load('./product/search.jsp', param);
		
	});
	
product.move = function(nowPage){
	document.frm_product.nowPage.value=nowPage;
	var param = $('#frm_product').serialize();
		$('#product').load('./product/search.jsp', param);
}

product.modify = function(serial){ //수정 화면 이후에 원 화면으로 돌아갈 때, 검색했던 serial 번호로 돌아가기 위해서
	document.frm_product.serial.value=serial;
		var param = $('#frm_product').serialize();
		
	$('#product').load('./product/modify.jsp', param);
}
	
product.select = function(){
	var param = $('#frm_product').serialize();
	$('#product').load('./product/search.jsp', param);
}

product.deleteR = function(){
	var yn= confirm("정말 삭제하시겠습니까?");
	if(!yn) return;
	
	var param = $('#frm_product').serialize();
	$.ajax({
		type		: 'post',
		url			: './product/delete_result.jsp',
		data		: param,
		success : function(resp){
			alert(resp);
			$('#product').load('./product/search.jsp', param);
		},
		error		: function(xhr, status, resp){
			alert("삭제중 오류 발생");
		}
	})
}
	
product.modifyR = function(){
	var yn= confirm("정말 수정하시겠습니까?");
	if(!yn) return;
	
	var param = $('#frm_product').serialize();
	$.ajax({
		type		: 'post',
		url			: './product/modify_result.jsp',
		data		: param,
		success : function(resp){
			alert(resp);
			$('#product').load('./product/search.jsp', param);
		},
		error		: function(xhr, status, resp){
			alert("수정 중 오류 발생");
		}
	})
}

product.insert = function(){
	var param = $('#frm_product').serialize();
	$('#product').load('./product/register.jsp', param);
}

product.insertR = function(){
	var param = $('#frm_product').serialize();
	$.ajax({
		type		: 'post',
		url			: './product/register_result.jsp',
		data		: param,
		success : function(resp){
			$('#product').load('./product/search.jsp', param);
			alert(resp);
		},
		error		: function(xhr, status, resp){
			alert("수정 중 오류 발생");
		}
	})
}

}














