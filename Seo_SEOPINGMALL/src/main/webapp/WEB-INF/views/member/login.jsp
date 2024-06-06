<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/member/login.css">
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
			
				<c:if test = "${member == null}">	<!-- 로그인 x  -->	
				
				
				
				
				
				
                    
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
	
	
	
	
	
	
	
	
	 <div class="content_subject"><span>로그인</span></div> 
	
	
	
	
	
	 <form id="login_form" method="post">
 
    
		<!-- <div class="logo_wrap">
			<span>SEOPINGMALL</span>
		</div> -->
		<div class="login_wrap"> 
			<div class="id_wrap"> 
					<div class="id_input_box">
					<input class="id_input" name="memberId" placeholder="아이디"> 
				</div>
			</div>
			<div class="pw_wrap">
				<div class="pw_input_box">
					<input type="password" class="pw_iput" name="memberPw" placeholder="비밀번호"> 
				</div>
			</div>
			
			 <c:if test = "${result == 0 }">
                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            </c:if>
			
			<div class="login_button_wrap">
				<input type="button" class="login_button" value="로그인">
			</div>	
			<div class="join_button_wrap">
				<input type="button" class="join_button" value="회원가입">
			</div>				
				
		</div>
		</form>
		


<!-- Footer 영역 -->

 	<div class="footer_all">
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
		</div>
		
		
	</div> <!-- class="wrap" -->
</div>	<!-- class=wrapper" -->


<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".login_button").click(function(){
        
      //  alert("로그인 버튼 작동");
    	/* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/member/login.do");
        $("#login_form").submit();
        
    });
    
    $(".join_button").click(function(){
        var joinPageURL = "/member/join"; 

        window.location.href = joinPageURL;
    });
 
</script>

</body>
</html>