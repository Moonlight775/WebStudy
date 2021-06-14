<%@page import="member.MemberVo"%>
<%@page import="mybatis.EmpVo"%>
<%@page import="product.ProductVo"%>
<%@page import="java.util.List"%>
<%@page import="mybatis.MybaFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>employee</title>
</head>
<body>
<div id='employee'>
	<%
		SqlSession sqlSession = MybaFactory.getFactory().openSession();
		ProductVo pVo = new ProductVo();
		int r=0;
		/* 
		String firstName = sqlSession.selectOne("test.test_emp", 120);
		out.print("<li>firstName : " + firstName);
		// 부서코드를 입력하여 부서명을 출력하시오.
		String dName = sqlSession.selectOne("test.get_dep_name", 80);
		out.print("<li>dName : " + dName);
		
		// 제품목록을 모두 출력
		out.print("<hr/> <h2>제품 목록</h2>");
		List<ProductVo> pList = sqlSession.selectList("test.all_product");
		for(ProductVo vo : pList){
			out.print("<li>" + vo.getpCode());
			out.print(" -- " + vo.getpName());
		}
		
		// 부서코드가 100번인 직원들의 사번, 이름, 급여, 연락처를 조회
		out.print("<hr/> <h2>직원정보</h2>");
		List<EmpVo> eList = sqlSession.selectList("test.get_info_100", 100);
		for(EmpVo vo : eList){
			out.print("<li>사번 : " + vo.getEmployeeId());
			out.print("<li>이름 : " + vo.getFirstName());
			out.print("<li>급여 : " + vo.getSalary());
			out.print("<li>연락처 : " + vo.getPhoneNumber());
			out.print("<br/>---------------------------------- ");
		} 
		
		// 제품관리 테이블에 데이터를 추가하시오.
		pVo.setGubun("입고");
		pVo.setpCode("p001");
		pVo.setpName("모니터");
		pVo.setEa(500);
		pVo.setPrice(10000);
		pVo.setAmt(pVo.getEa() * pVo.getPrice());
		pVo.setMid("h001");
		
		r = sqlSession.insert("test.product_insert", pVo);
		if(r>0){
			sqlSession.commit();
			out.print("<br/>정상적으로 저장됨");
		}else{
			sqlSession.rollback();
			out.print("저장 중 오류발생");
		}
		
		// serial=10021번인 자료의 ea와 price를 수정
		pVo = new ProductVo();
		pVo.setSerial(10000);
		pVo.setEa(100);
		pVo.setPrice(5000);
		r = sqlSession.update("test.product_update", pVo);
		
		if(r>0){
			out.print("<br/>정상적으로 수정됨");
			sqlSession.commit();
		}else{
			out.print("<br/>수정 중 오류 발생");
			sqlSession.rollback();
		}
		
		r= sqlSession.delete("test.product_delete", 10000);
		if(r>0){
			out.print("<br/>정상적으로 삭제됨");
			sqlSession.commit();
		}else{
			out.print("<br/>삭제 중 오류 발생");
			sqlSession.rollback();
		}
		*/
		
		// 입력된 mid가 null이 아닌경우에만 where조건이 실행되도록 조치
		List<MemberVo> mList = sqlSession.selectList("test.if_test", null);
		out.print("mList size : " + mList.size()); //회원 전체 건수
		
		mList = sqlSession.selectList("test.if_test", "m0010");
		out.print("<br/>mList size : " + mList.size()); //
		
		// choose 사용
		// 입력된 값이 1, 2, 3, 4 중 하나이며, 이는 분기를 나타낸다. 1이면 입사일이 1~3월까지인 직원들을,
		// 2이면 4~6월, 3이면 7~9월, 4이면 10~12월까지의 직원들을 EmpVo에 담아서 리턴
		List<EmpVo> list1 = sqlSession.selectList("test.emp_list", 1); // 1사분기에 입사한 직원들의 목록
		out.print("<br/>1분기 입사자 수 : " + list1.size());
		List<EmpVo> list2 = sqlSession.selectList("test.emp_list", 2); // 2사분기에 입사한 직원들의 목록
		out.print("<br/>2분기 입사자 수 : " + list2.size());
		
		// where 사용
		// findStr에 값이 전달된 경우에만 employees 테이블의 first_name에 findStr이 포함된 명단을 EmpVo에 담아 리턴
		// id : test.emp_find
		List<EmpVo> list3 = sqlSession.selectList("test.emp_find", null);
		out.print("<br/>findStr is null : " + list3.size());
		
		List<EmpVo> list4 = sqlSession.selectList("test.emp_find", "th");
		out.print("<br/>findStr is 'th' : " + list4.size());
		
		sqlSession.close();
		
	%>


</div>
</body>
</html>














