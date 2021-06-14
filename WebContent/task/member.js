function check_onclick(){
		var RegExp = /^[a-zA-Z0-9]{4,12}$/; //id와 pwassword 유효성 검사 정규식
    //이메일 유효성검사
    var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var n_RegExp = /^[가-힣]{2,15}$/; //이름 유효성검사 정규식
    
    var objId = document.getElementById("id"); //아이디
    var objPwd1 = document.getElementById("pwd1"); //비밀번호
    var objPwd2 = document.getElementById("pwd2"); //비밀번호확인
    var objEmail = document.getElementById("email");//메일
    var objName = document.getElementById("name"); //이름
		var objAddr1 = document.getElementById("addr1"); //주소
    var objAddr2 = document.getElementById("addr2"); //주소확인

    // ================ 이름 유효성검사 ================ //        
    if(objName.value ==''){
        alert("성명을 입력해주세요.")
		objName.focus();
    }
    else if(!n_RegExp.test(objName.value)){
        alert("특수문자,영어,숫자는 사용할수 없습니다. 한글만 입력하여주세요.");
    	objName.focus();
	}
    
	// ================ ID 유효성검사 ================ //
    
    else if(objId.value==''){
        alert("아이디를 입력해주세요.");
		objId.focus();
    }
    else if(!RegExp.test(objId.value)){ //아이디 유효성검사
        alert("아이디는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		objId.focus();      
    }
    
    // ================ PASSWORD 유효성검사 ===============//
    else if(objPwd1.value==''){ // 비밀번호 입력여부 검사
        alert("비밀번호를 입력해주세요.");
		objPwd1.focus();
    }
    else if(!RegExp.test(objPwd1.value)){ //패스워드 유효성검사
        alert("비밀번호는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		objPwd1.focus();
    }
    else if(objPwd1.value==objId.value){ //패스워드와 ID가 동일한지 검사
        alert("비밀번호는 아이디와 동일하면 안됩니다.");
		objPwd1.focus();
    }
	else if(objPwd2.value==''){
		alert("비밀번호 확인을 입력해주세요.");
		objPwd2.focus();
	}
    else if(objPwd2.value!=objPwd1.value){ //비밀번호와 비밀번호확인이 동일한지 검사
        alert("비밀번호가 틀립니다. 비밀번호를 확인해주세요.");
		objPwd2.focus();
    }
    
	// =============== 주소 유효성검사 ================= //
	else if(objAddr1.value==''){
		alert("주소를 입력해주세요.");
		objAddr1.focus();
	}
	else if(objAddr2.value ==''){
		alert("상세주소를 입력해주세요.");
		objAddr2.focus();
	}
	
    // ================ email 유효성검사 ================ //
    else if(objEmail.value == ''){ // 이메일 입력여부 검사
        alert("이메일을 입력해주세요.");
		objEmail.focus();
    }
    else if(!e_RegExp.test(objEmail.value)){ //이메일 유효성 검사
        alert("올바른 이메일 형식이 아닙니다.");
		objEmail.focus();
    }
	else{
		document.frm_signup.submit();
		alert("회원가입이 되었습니다.");
	}
}

function cancel(){
	alert("취소되었습니다.");
}





