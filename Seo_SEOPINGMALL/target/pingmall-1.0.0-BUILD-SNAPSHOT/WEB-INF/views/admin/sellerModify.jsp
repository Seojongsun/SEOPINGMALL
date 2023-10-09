<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/sellerModify.css">

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
				<%@include file="../includes/admin/header.jsp" %>
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>판매자 상세</span></div>
                    <div class="admin_content_main">
                    	<form id="modifyForm" action="/admin/sellerModify" method="post">
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>판매자 번호</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input class="input_block" name="sellerId" readonly="readonly" value="<c:out value='${sellerInfo.sellerId }'></c:out>">
	                   			</div>
	                   		</div>                    
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>판매자 이름</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input name="sellerName" value="<c:out value='${sellerInfo.sellerName }'></c:out>" >
	                   				<span id="warn_sellerName">판매자 이름을 입력 해주세요.</span>
	                   			</div>
	                   		</div>
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>소속 국가</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<select name="nationId" >
	                   					<option value="none" disabled="disabled">=== 선택 ===</option>
	                   					<option value="01" <c:out value=" ${sellerInfo.nationId eq '01' ?'selected':''}"/>>국내</option>
	                   					<option value="02" <c:out value=" ${sellerInfo.nationId eq '02' ?'selected':''}"/>>국외</option>
	                   				</select>
	                   			</div>
	                   		</div>
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>판매자소개</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<textarea name="sellerIntro" ><c:out value='${sellerInfo.sellerIntro }'/></textarea>
	                   				<span id="warn_sellerIntro">판매자 소개를 입력 해주세요.</span>
	                   			</div>
	                   		</div>
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>등록 날짜</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${sellerInfo.regDate}" pattern="yyyy-MM-dd"/>">
	                   			</div>
	                   		</div>
	                   		<div class="form_section">
	                   			<div class="form_section_title">
	                   				<label>수정 날짜</label>
	                   			</div>
	                   			<div class="form_section_content">
	                   				<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${sellerInfo.updateDate}" pattern="yyyy-MM-dd"/>">
	                   			</div>
	                   		</div>
	                 		<div class="btn_section">
	                   			<button id="cancelBtn" class="btn">취소</button>
		                    	<button id="modifyBtn" class="btn modify_btn">수 정</button>
		                    	<button id="deleteBtn" class="btn delete_btn">삭 제</button>
		                    </div> 
	                    </form>
                    </div>                    
                </div>
                
                <form id="moveForm" method="get">
                	<input type="hidden" name="sellerId" value='<c:out value="${sellerInfo.sellerId }"/>'>
                	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
                	<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>' >
                	<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
                </form>
                
				<%@include file="../includes/admin/footer.jsp" %>
				
				
	<script>
	
	let moveForm = $("#moveForm");
	let modifyForm = $("#modifyForm");
	



	/* 판매자 상세 페이지 이동 버튼 */
	$("#cancelBtn").on("click", function(e){
		
		e.preventDefault();
				
		moveForm.attr("action", "/admin/sellerDetail")
		moveForm.submit();
		
	});
	
	/* 삭제 버튼 */
	$("#deleteBtn").on("click", function(e){
		e.preventDefault();
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="sellerId" value="${sellerInfo.sellerId}">');
		moveForm.attr("action", "/admin/sellerDelete");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
	
	/* 판매자 수정 버튼 작동 및 유효성 검사 */
	$("#modifyBtn").on("click", function(e){

		let sellerName = $(".form_section_content input[name='sellerName']").val();
		let sellerIntro = $(".form_section_content textarea").val();		

		let	nameCk = false;
		let introCk = false;		
		
		e.preventDefault();
		
		if(!sellerName){
			$("#warn_sellerName").css("display", "block");
		} else {
			$("#warn_sellerName").css("display", "none");
			nameCk = true;
		}
		if(!sellerIntro){
			$("#warn_sellerIntro").css("display", "block");
		} else {
			$("#warn_sellerIntro").css("display", "none");
			introCk = true;
		}

		
		if(nameCk && introCk ){
			modifyForm.submit();	
		} else {
			return false;
		}
		
		
	});
	
	
	</script>


</body>
</html>