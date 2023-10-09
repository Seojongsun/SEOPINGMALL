<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome SEOPINGMALL</title>
<link rel="stylesheet" href="resources/css/search.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>

<div class="wrapper">
	<div class="wrap">
		<div class="top_gnb_area">
		
		<ul class="main_page">
		
		
		<li>
		 <a href="/main">SEOPINGMALL</a>
		</li>
		
		</ul>
		
		
			<ul class="list">
			
				<c:if test = "${member == null}">	<!-- 로그인 x -->	
				
				
				
				
				
				
                    
					<li >
						<a href="/member/login">로그인</a>
					</li>
					<li>
						<a href="/member/join">회원가입</a>
					</li>
				</c:if>
				<c:if test="${member != null }">	<!-- 로그인 o -->		
					<c:if test="${member.adminCk == 1 }">	<!-- 관리자 계정 -->
						<li><a href="/admin/main">관리자 페이지</a></li>
					</c:if>			
					
					<li>
						<a href="/cart/${member.memberId}">장바구니</a>
					</li>
					
					<li>
						<a id="gnb_logout_button">로그아웃</a>
					</li>
				</c:if>				
			</ul>			
		</div>
		<div class="top_area">
		
		
			<!-- 로고영역 -->
			<!--
			<div class="logo_area">
				<a href="/main"><img src="resources/img/mLogo.png"></a>
			</div>
			-->
			
			<div class="search_area">
                	<div class="search_wrap">
                		<form id="searchForm" action="/search" method="get">
                			<div class="search_input">
                				<select name="type">
                					<option value="N">상품 이름</option>
                					<option value="S">판매자</option>
                				</select>
                				<input type="text" name="keyword">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
			</div>
			
			
			<div class="login_area">
			
				<!-- 로그인 하지 않은 상태 -->
				<c:if test = "${member == null }">
				
					<!--  <div class="login_button"><a href="/member/login">로그인</a></div>
					<span><a href="/member/join">회원가입</a></span>			-->
					<div class="login_non_area">
					<h1>신규가입시 다양한 혜택과 5000포인트 제공 이벤트중!</h1>
					</div>			
				</c:if>				
				
				<!-- 로그인한 상태 -->
				<c:if test="${ member != null }">
					<div class="login_success_area">
						<span> <h3>${member.memberName}님 환영합니다.</h3></span>
						<span>충전금액 : <fmt:formatNumber value="${member.money }" pattern="\#,###.##"/>원</span>
						<span>포인트  : <fmt:formatNumber value="${member.point }" pattern="#,###" /> point </span>
					<!--  	<a href="/member/logout.do">로그아웃</a> -->
					</div>
				</c:if>
				
			</div> <!-- loggin_area 끝 -->
			<div class="clearfix"></div>			
		</div>
		
		
		<div class="content_area">
		
		
		
 <div class="content_subject"><span>검색 결과</span></div> 
		
	 	

		
			<!-- 게시물 o -->
			<c:if test="${listcheck != 'empty'}">
			
			<div class="search_filter">
					<div class="filter_button_wrap">
						<button class="filter_button filter_active" id="filter_button_a">국내배송</button>
						<button class="filter_button" id="filter_button_b">해외직구</button>
					</div>
					
					
					
					<div class="filter_content filter_a">
					
					<c:forEach items="${filter_info}" var="filter">
					<c:if test="${filter.cateGroup eq '1'}">
						<a href="${filter.cateCode}">${filter.cateName}(${filter.cateCount})</a>
					</c:if>
					</c:forEach>
					
					</div>
					
					
					<div class="filter_content filter_b">
					
					<c:forEach items="${filter_info}" var="filter">
					<c:if test="${filter.cateGroup eq '2'}">
						<a href="${filter.cateCode}">${filter.cateName}(${filter.cateCount})</a>
					</c:if>
					</c:forEach>
					
					
					</div>		
					
						
					
					<form id="filter_form" action="/search" method="get" >
						<input type="hidden" name="keyword">
						<input type="hidden" name="cateCode">
						<input type="hidden" name="type">
					</form>						
													
				</div>
			
			<div class="list_search_result">
			
			
			
			<div id="searchResult">
			</div>


					<table class="type_list">
						<colgroup>
							<col width="110">
							<col width="*">
							<col width="120">
							<col width="240">
							<%-- <col width="120"> --%>
						</colgroup>
						<tbody id="searchList>">
							<c:forEach items="${list}" var="list" >
								<tr>
									<td class="image">
									<div class="image_wrap" data-productid="${list.imageList[0].productId}" data-path="${list.imageList[0].uploadPath}" data-uuid="${list.imageList[0].uuid}" data-filename="${list.imageList[0].fileName}">
										<img>
										</div>
										</td>
									
									<td class="detail">
										<div class="category">
											[${list.cateName}]
										</div>
										<div class="title">
										<a href="/goodsDetail/${list.productId}">
											${list.productName}
											</a>
										</div>
										<div class="seller">
										<fmt:parseDate var="makeDate" value="${list.makeDate}" pattern="yyyy-MM-dd" />
											<b>판매자</b> : ${list.sellerName}  | <b>제조사</b> : ${list.maker} | <b>제조일자</b> :<fmt:formatDate value="${makeDate}" pattern="yyyy-MM-dd"/>
										</div>
									</td>
									<td class="info">
										<div class="rating" >
											
										</div>
									</td>
									<td class="price">
										<div class="org_price">
											<del>
												<fmt:formatNumber value="${list.productPrice}" pattern="#,###원" />
											</del>
										</div>
										<div class="sell_price">
											<strong>
												<fmt:formatNumber value="${list.productPrice * (1-list.productDiscount)}" pattern="#,###원" />
											</strong>
										</div>
									</td>
									<!-- <td class="option"></td> -->
								</tr>
							</c:forEach>
						</tbody>
					
					</table>
				</div>
				
					<!-- 페이지 이동 인터페이스 -->
				<div class="pageMaker_wrap">
					<ul class="pageMaker">
	                			
						<!-- 이전 버튼 -->
						<c:if test="${pageMaker.prev }">
	               			<li class="pageMaker_btn prev">
	               				<a href="${pageMaker.pageStart -1}">이전</a>
	               			</li>
						</c:if>
	               			
	               		<!-- 페이지 번호 -->
	               		<c:forEach begin="${pageMaker.pageStart }" end="${pageMaker.pageEnd }" var="num">
	               			<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
	               				<a href="${num}">${num}</a>
	               			</li>	
	               		</c:forEach>
	               		
	                   	<!-- 다음 버튼 -->
	                   	<c:if test="${pageMaker.next}">
	                   		<li class="pageMaker_btn next">
	                   			<a href="${pageMaker.pageEnd + 1 }">다음</a>
	                   		</li>
	                   	</c:if>
					</ul>
				</div>
				
				<form id="moveForm" action="/search" method="get" >
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
					<input type="hidden" name="cateCode" value="<c:out value="${pageMaker.cri.cateCode}"/>">
					<input type="hidden" name="type" value="${pageMaker.cri.type}">
				</form>
			
			</c:if>
			
			<!-- 게시물 x -->
			<c:if test="${listcheck == 'empty'}">
			<div id="searchResult">
			</div>
				<div class="table_empty">
					검색결과가 없습니다.
				</div>
			</c:if>
			
		</div>
		
		
		<!-- Footer 영역 -->
		<div class="footer_nav">
			<div class="footer_nav_container">
				<ul>
					<li>회사소개</li>
					<span class="line">|</span>
					<li>공지사항</li>
					<span class="line">|</span>
					<li>이벤트 공지</li>
					<span class="line">|</span>
					<li>입정/제휴/대량구매</li>
					<span class="line">|</span>
					<li>개인정보처리방침</li>
					<span class="line">|</span>
					<li>이용약관</li>
					<span class="line">|</span>
				</ul>
			</div>
		</div> <!-- class="footer_nav" -->
		
		<div class="footer">
			<div class="footer_container">
				
				<div class="footer_real">
				주식회사 서핑몰 (SEOPINGMALL Co., Ltd.) | 서울시 금천구 시흥대로152길 11-43, 1층 (독산동, 서핑몰 엔1) | 사업자등록번호 : 123-12-12345 <br>
				통신판매업신고 : 1234-서울독산-12345 | 대표 : 서종선 | 개인정보보호상품임자 : 서종선 | 홈페이지:<a href="https://www.github.com/seojongsun">https://www.github.com/seojongsun</a>
				
				
				</div>
				
				
				<div class="clearfix"></div>
				
				
			</div>
			
		</div> <!-- class="footer" -->  
		
		
		
	</div> <!-- class="wrap" -->
</div>	<!-- class=wrapper" -->


<script>
 
    /* gnb_area 로그아웃 버튼 작동 */
    $("#gnb_logout_button").click(function(){
        //alert("버튼 작동");
        $.ajax({
            type:"POST",
            url:"/member/logout.do",
            success:function(data){
                alert("로그아웃 성공");
                document.location.reload();     
            } 
        }); // ajax 
    });
    
    
	/* 페이지 이동 버튼 */
    const moveForm = $('#moveForm');
    
	$(".pageMaker_btn a").on("click", function(e){
		
		e.preventDefault();
		
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		
		moveForm.submit();
		
	});
	
	
	/* 검색 필터 */
	let buttonA = $("#filter_button_a");
	let buttonB = $("#filter_button_b");
	
	
	buttonA.on("click", function(){
		$(".filter_b").css("display", "none");
		$(".filter_a").css("display", "block");		
		buttonA.attr("class", "filter_button filter_active");
		buttonB.attr("class", "filter_button");
	});
	
	buttonB.on("click", function(){
		$(".filter_a").css("display", "none");
		$(".filter_b").css("display", "block");
		buttonB.attr("class", "filter_button filter_active");
		buttonA.attr("class", "filter_button");		
	});
	
	
	// 필터링 태그 동작
	$(".filter_content a").on("click", function(e){
		e.preventDefault();
		
		let type = '<c:out value="${pageMaker.cri.type}"/>';
		if(type === 'S' || type === 'N'){
			type = type + 'C';	
		}
		let keyword = '<c:out value="${pageMaker.cri.keyword}"/>';
		let cateCode= $(this).attr("href");
		
		$("#filter_form input[name='keyword']").val(keyword);
		$("#filter_form input[name='cateCode']").val(cateCode);
		$("#filter_form input[name='type']").val(type);
		$("#filter_form").submit();
		
	});
	
	
	
	
    
	$(document).ready(function(){
		// 검색 타입 selected
		const selectedType = '<c:out value="${pageMaker.cri.type}"/>';
		if(selectedType != ""){
			$("select[name='type']").val(selectedType).attr("selected", "selected");	
		}
		
		/* 이미지 삽입 */
		$(".image_wrap").each(function(i, obj){
			
			const bobj = $(obj);
			
			
			if(bobj.data("productid")) {
			
		
			const uploadPath = bobj.data("path");
			const uuid = bobj.data("uuid");
			const fileName = bobj.data("filename");
			
			const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
			
			$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
			
		}	else {
			$(this).find("img").attr('src', '/resources/img/goodsNoImage.png');
		}
			
			
		});
		
	});
	
 	 const urlParams = new URLSearchParams(window.location.search);
	const keyword = urlParams.get("keyword");
	const searchResultElement = document.getElementById("searchResult");

	if (keyword) {
	    // keyword 변수 앞뒤에 작은 따옴표(')를 추가한 후 searchResultElement에 넣습니다.
	    const formattedKeyword = "'" + keyword + "'";
	    searchResultElement.textContent = formattedKeyword + "에 대한 검색 결과";
	} else {
	    searchResultElement.textContent = "전체 검색 결과입니다.";
	} 

	

	
</script>






</body>
</html>