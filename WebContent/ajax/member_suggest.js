/**
 * 회원 상세보기 및 suggest 기능
 */
	var frm = document.frm;
	var btn = document.getElementById('btnFind');
	var input = frm.findStr; // = document.frm.findStr(var frm 변수처리 이유, 코드 단순화)
	var xhr = new XMLHttpRequest();
	var rs = document.getElementsByClassName('bottom')[0];
	var sel = frm.sel;
 	
	input.onkeyup = funcKey;
	btn.onclick = funcFind;
	
	
	function funcKey(ev){
		var d = ev.srcElement.value;
		//console.log(d);
		
		if(d.length>1){
			funcFind();
		}
	}
	
	function funcFind(){
		sel.length = 0; //select안에 있는 모든 데이터 삭제
		
 		var url = 'member_suggest_result.jsp' //<-요청을 처리 할 페이지
		
		url = url + "?findStr=" + frm.findStr.value; //?는 파라메터의 시작을 알림
							//   ↑파라메터 변수명('?'뒤) ↑파라메터 값
		xhr.open('get', url) //get타입으로 초기화
		xhr.send()
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){ //200, 4가 정상값
				var temp = xhr.responseText;
				var json = JSON.parse(temp);
				for(var i=0; i<json.length; i++){
					var d = json[i];
					sel.options[i] = new Option(d.data, d.id);
				}
				
				if(sel.length <1){ //보여질 데이터가 없다면 감춤
					sel.style.visibility = 'hidden';
				}else{
					sel.style.visibility = 'visible';
				}
			}
		}
	}
	sel.ondblclick = function(){ //select에서 더블클릭한 경우
		var v = sel[sel.selectedIndex].value;
		var url = 'member_suggest_detail.jsp?eid=' + v;
		xhr.open('get', url);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				var temp = xhr.responseText;
				var json = JSON.parse(temp);
				var d = '<li> 사번 : ' 			+ json.id
										 + '<li> 성명 : ' 			+ json.fn
										 + '<li> 이메일 : ' 		+ json.em
										 + '<li> 연락처 : ' 		+ json.ph
										 + '<li> 부서코드 : ' 		+ json.did
										 + '<li> 매니저아이디 : ' + json.mid
										 + '<li> 직무코드 : ' 		+ json.jid;
				rs.innerHTML = d;
				sel.style.visibility = 'hidden';					
			}
		}
	}

		







