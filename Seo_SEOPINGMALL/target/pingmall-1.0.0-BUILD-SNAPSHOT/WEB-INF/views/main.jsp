<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome SeoPingMall</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
 <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/> 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>  

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
		<div class="navi_bar_area">
			<div class="dropdown">
			    <button class="dropbtn">국내 빠른배송
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			    	<c:forEach items="${cate1}" var="cate"> 
			    		<a href="search?type=C&cateCode=${cate.cateCode}">${cate.cateName}</a>
			    	</c:forEach>	      		      		      
			    </div>			
			</div>
			<div class="dropdown">
			    <button class="dropbtn">해외직구
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			    	<c:forEach items="${cate2}" var="cate"> 
			    		<a href="search?type=C&cateCode=${cate.cateCode}">${cate.cateName}</a>
			    	</c:forEach>     		      		      
			    </div>			
			</div>
		</div>
		<div class="content_area">
		
		  	<div class="slide_div_wrap">
				<div class="slide_div">
				<div>
						<a>
							<img src="../resources/img/1.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../resources/img/2.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../resources/img/3.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../resources/img/4.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../resources/img/5.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../resources/img/6.jpg">
						</a>
					</div>		
				</div>	
			</div>
			
			
			<!--
			<div class="ls_wrap">
				<div class="ls_div_subject">
					인기순 상품리스트
				</div>
				<div class="ls_div">
					<c:forEach items="${ls}" var="ls">
						<a href="/goodsDetail/${ls.productId}">
							<div class="ls_div_content_wrap"> 
								<div class="ls_div_content">
									<div class="image_wrap" data-productid="${ls.imageList[0].productId}" data-path="${ls.imageList[0].uploadPath}" data-uuid="${ls.imageList[0].uuid}" data-filename="${ls.imageList[0].fileName}">
										<img>
									</div>				
									<div class="ls_category">
										${ls.cateName}
									</div>
									<div class="ls_rating">
										${ls.ratingAvg}
									</div>
									<div class="ls_productName">
										${ls.productName}
									</div>							
								</div>
							</div>
						</a>					
					</c:forEach>					
				</div>
			</div>		
				
			
		</div>   
		-->
		
		
		<!--
		<div class="ls_wrap">
    <div class="ls_div_subject">
        인기순 상품리스트
    </div>
    <div class="ls_div">
        <c:forEach items="${ls}" var="ls" varStatus="loop">
            <c:if test="${loop.index % 5 == 0}">
                <div class="ls_div_row">
            </c:if>
            
            <a href="/goodsDetail/${ls.productId}">
                <div class="ls_div_content_wrap"> 
                    <div class="ls_div_content">
                        <div class="image_wrap" data-productid="${ls.imageList[0].productId}" data-path="${ls.imageList[0].uploadPath}" data-uuid="${ls.imageList[0].uuid}" data-filename="${ls.imageList[0].fileName}">
                            <img>
                        </div>				
                        <div class="ls_category">
                            ${ls.cateName}
                        </div>
                        <div class="ls_rating">
                           평점 <span>: </span> ${ls.ratingAvg}
                        </div>
                        <div class="ls_productName">
                            ${ls.productName}
                        </div>							
                    </div>
                </div>
            </a>
            
            <c:if test="${(loop.index + 1) % 5 == 0 || loop.last}">
                </div>
            </c:if>
        </c:forEach>
    </div>
</div>

  -->

<div class="ls_wrap">
    <div class="ls_div_subject">
        인기순 상품리스트
    </div>
    <div class="ls_div">
        <c:forEach items="${ls}" var="ls" varStatus="loop">
            <c:if test="${loop.index % 5 == 0}">
                <div class="ls_div_row">
            </c:if>
            
            <a href="/goodsDetail/${ls.productId}">
                <div class="ls_div_content_wrap"> 
                    <div class="ls_div_content">
                        <div class="image_wrap" data-productid="${ls.imageList[0].productId}" data-path="${ls.imageList[0].uploadPath}" data-uuid="${ls.imageList[0].uuid}" data-filename="${ls.imageList[0].fileName}">
                            <img>
                        </div>				
                        <div class="ls_category">
                            ${ls.cateName}
                        </div>
                        <div class="ls_rating">
                           평점 <span>: </span> ${ls.ratingAvg}
                        </div>
                        <div class="ls_productName">
                            ${ls.productName}
                        </div>
                        <div class="ls_ranking">
                             ${loop.index + 1}위
                        </div>
                    </div>
                </div>
            </a>
            
            <c:if test="${(loop.index + 1) % 5 == 0 || loop.last}">
                </div>
            </c:if>
        </c:forEach>
    </div>
    
    <form id="search_form" action="/search" method="get" >
						<input type="hidden" name="keyword">
					</form>
    
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
		
	</div>	<!-- class="wrap" -->
</div>	<!-- class="wrapper" -->

<script>


	$(document).ready(function(){
		
		
		
		
		$(".slide_div").slick(
				{
					slidesToShow: 3,
					  slidesToScroll: 1,
					  autoplay: true,
					  autoplaySpeed: 2500,
				}				
		);	
		
		$(".ls_div").slick({
			slidesToShow: 2,
			slidesToScroll: 2,
			prevArrow : "<button type='button' class='ls_div_content_prev'>이전</button>",		// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='ls_div_content_next'>다음</button>",		// 다음 화살표 모양 설정	
		});		
		
		/* 이미지 삽입 */
		$(".image_wrap").each(function(i, obj){
			
			const bobj = $(obj);
			
			if(bobj.data("productid")){
				const uploadPath = bobj.data("path");
				const uuid = bobj.data("uuid");
				const fileName = bobj.data("filename");
				
				const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
				
				$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
			} else {
				$(this).find("img").attr('src', '/resources/img/goodsNoImage.png');
			}
			
		});			
		
		
	});


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
	
	

	
	
</script>

</body>
</html>