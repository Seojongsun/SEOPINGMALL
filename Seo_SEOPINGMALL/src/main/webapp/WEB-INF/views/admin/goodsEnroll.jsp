<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style type="text/css">
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
	
</style>
</head>
</head>
<body>

	<%@include file="../includes/admin/header.jsp"%>


	<div class="admin_content_wrap">
		<div class="admin_content_subject">
			<span>상품 등록</span>
		</div>
		<div class="admin_content_main">
			<form action="/admin/goodsEnroll" method="post" id="enrollForm">
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 이름</label>
					</div>
					<div class="form_section_content">
						<input name="productName">
						<span class="ck_warn productName_warn">상품 이름을 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>판매자</label>
					</div>
					<div class="form_section_content">
						<input id="sellerName_input" readonly="readonly"> <input
							id="sellerId_input" name="sellerId" type="hidden">
						<button class="sellerId_btn">판매자 선택</button>
						<span class="ck_warn sellerId_warn">판매자를 선택해주세요</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>제조일</label>
					</div>
					<div class="form_section_content">
						<input name="makeDate" autocomplete="off" readonly="readonly">
						<span class="ck_warn makeDate_warn">제조일을 선택해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>제조사</label>
					</div>
					<div class="form_section_content">
						<input name="maker">
						<span class="ck_warn maker_warn">제조사를 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>카테고리</label>
					</div>
					<div class="form_section_content">
							<div class="cate_wrap">
				<span>대분류</span>
				<select class="cate1">
					<option selected value="none">선택</option>
				</select>
			</div>
			<div class="cate_wrap">
				<span>중분류</span>
				<select class="cate2">
					<option selected value="none">선택</option>
				</select>
			</div>
			<div class="cate_wrap">
				<span>소분류</span>
				<select class="cate3" name="cateCode">
					<option selected value="none">선택</option>
				</select>
			</div> 
			<span class="ck_warn cateCode_warn">카테고리를 선택해주세요.</span> 
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 가격</label>
					</div>
					<div class="form_section_content">
						<input name="productPrice" value="0">
						<span class="ck_warn productPrice_warn">상품 가격을 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 재고</label>
					</div>
					<div class="form_section_content">
						<input name="productStock" value="0">
						<span class="ck_warn productStock_warn">상품 재고를 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 할인율</label>
					</div>
					<div class="form_section_content">
						<input id="discount_interface" maxlength="2" value="0">
						<input name="productDiscount" type="hidden" value="0">
						<span class="step_val">할인 가격 : <span class="span_discount"></span></span>
						<span class="ck_warn productDiscount_warn">0~99 숫자를 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 소개</label>
					</div>
					<div class="form_section_content bit">
						<textarea name="productIntro" id="productIntro_textarea"></textarea>
						<span class="ck_warn productIntro_warn">상품의 간단한 소개를 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 상세내용</label>
					</div>
					<div class="form_section_content bct">
						<textarea name="productContents" id="productContents_textarea"></textarea>
						<span class="ck_warn productContents_warn">상품 상세내용을 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지</label>
                    			</div>
                    			<div class="form_section_content">
                    			<input type="file" id ="fileItem" name='uploadFile' style="height: 30px;">
                    				<div id="uploadResult">
                    					
                    				<!-- 	<div id="result_card">
											<div class="imgDeleteBtn">x</div>
											 <img src="/resources/img/Logo.png"> 
											 <img src="/display?fileName=test.png">  -->
											  
									</div>
								</div>
									<!-- 파일 여러개 
									<input type="file" multiple> -->
									
                    			</div>
                    		</div>  
				
				
			</form>
			<div class="btn_section">
				<button id="cancelBtn" class="btn">취 소</button>
				<button id="enrollBtn" class="btn enroll_btn">등 록</button>
			</div>
		</div>


	<%@include file="../includes/admin/footer.jsp"%>



	<script>

	let enrollForm = $("#enrollForm")
	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	
	location.href="/admin/goodsManage"
	
});

/* 상품 등록 버튼 */
$("#enrollBtn").on("click",function(e){
	
	e.preventDefault();
	
	/* 체크 변수 */
	let productNameCk = false;
	let sellerIdCk = false;
	let makeDateCk = false;
	let makerCk = false;
	let cateCodeCk = false;
	let priceCk = false;
	let stockCk = false;
	let discountCk = false;
	let introCk = false;
	let contentsCk = false;
	
	
	/* 체크 대상 변수 */
	let productName = $("input[name='productName']").val();
	let sellerId = $("input[name='sellerId']").val();
	let makeDate = $("input[name='makeDate']").val();
	let maker = $("input[name='maker']").val();
	let cateCode = $("select[name='cateCode']").val();
	let productPrice = $("input[name='productPrice']").val();
	let productStock = $("input[name='productStock']").val();
	// let productDiscount = $("input[name='productDiscount']").val();
	let productDiscount = $("#discount_interface").val();
	let productIntro = $(".bit p").html();
	let productContents = $(".bct p").html();
	
	
	if(productName){
		$(".productName_warn").css('display','none');
		productNameCk = true;
	} else {
		$(".productName_warn").css('display','block');
		productNameCk = false;
	}
	
	if(sellerId){
		$(".sellerId_warn").css('display','none');
		sellerIdCk = true;
	} else {
		$(".sellerId_warn").css('display','block');
		sellerIdCk = false;
	}
	
	if(makeDate){
		$(".makeDate_warn").css('display','none');
		makeDateCk = true;
	} else {
		$(".makeDate_warn").css('display','block');
		makeDateCk = false;
	}	
	
	if(maker){
		$(".maker_warn").css('display','none');
		makerCk = true;
	} else {
		$(".maker_warn").css('display','block');
		makerCk = false;
	}
	
	if(cateCode != 'none'){
		$(".cateCode_warn").css('display','none');
		cateCodeCk = true;
	} else {
		$(".cateCode_warn").css('display','block');
		cateCodeCk = false;
	}	
	
	if(productPrice != 0){
		$(".productPrice_warn").css('display','none');
		priceCk = true;
	} else {
		$(".productPrice_warn").css('display','block');
		priceCk = false;
	}	
	
	if(productStock != 0){
		$(".productStock_warn").css('display','none');
		stockCk = true;
	} else {
		$(".productStock_warn").css('display','block');
		stockCk = false;
	}		
	
	if(!isNaN(productDiscount)){
		$(".productDiscount_warn").css('display','none');
		discountCk = true;
	} else {
		$(".productDiscount_warn").css('display','block');
		discountCk = false;
	}	
	
	if(productIntro != '<br data-cke-filler="true">'){
		$(".productIntro_warn").css('display','none');
		introCk = true;
	} else {
		$(".productIntro_warn").css('display','block');
		introCk = false;
	}	
	
	if(productContents != '<br data-cke-filler="true">'){
		$(".productContents_warn").css('display','none');
		contentsCk = true;
	} else {
		$(".productContents_warn").css('display','block');
		contentsCk = false;
	}

	if(productNameCk && sellerIdCk && makeDateCk && makerCk && cateCodeCk && priceCk && stockCk && discountCk && introCk && contentsCk ){
		//alert('통과');
		enrollForm.submit();
	} else {
		return false;
	}
	
});


/* 위지윅 적용 */

/* 제품 소개 */
ClassicEditor
	.create(document.querySelector('#productIntro_textarea'))
	.catch(error=>{
		console.error(error);
	});
	
/* 제품 내용 */	
ClassicEditor
.create(document.querySelector('#productContents_textarea'))
.catch(error=>{
	console.error(error);
});



// 캘린더 위젯 적용
/* 설정 */
const config = {
	dateFormat: 'yy-mm-dd',
	showOn : "button",
	buttonText:"날짜 선택",
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNames: ['일','월','화','수','목','금','토'],
    dayNamesShort: ['일','월','화','수','목','금','토'],
    dayNamesMin: ['일','월','화','수','목','금','토'],
    yearSuffix: '년',
    changeMonth: true,
    changeYear: true
}

/* 캘린더 */
$(function() {
  $( "input[name='makeDate']" ).datepicker(config);
});

/* 판매자 선택 버튼 */
$('.sellerId_btn').on("click",function(e){
	
	e.preventDefault();
	
	let popUrl = "/admin/sellerPop";
	let popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
	
	window.open(popUrl,"판매자 찾기",popOption);
	
});

/* $(document).ready(function(){
	console.log('${cateList}');
}); */

/* 카테고리 */
let cateList = JSON.parse('${cateList}');

let cate1Array = new Array();
let cate2Array = new Array();
let cate3Array = new Array();
let cate1Obj = new Object();
let cate2Obj = new Object();
let cate3Obj = new Object();

let cateSelect1 = $(".cate1");		
let cateSelect2 = $(".cate2");
let cateSelect3 = $(".cate3");


/* 카테고리 배열 초기화 메서드 */
function makeCateArray(obj,array,cateList, tier){
	for(let i = 0; i < cateList.length; i++){
		if(cateList[i].tier === tier){
			obj = new Object();
			
			obj.cateName = cateList[i].cateName;
			obj.cateCode = cateList[i].cateCode;
			obj.cateParent = cateList[i].cateParent;
			
			array.push(obj);				
			
			}
		}
	}	

/* 배열 초기화 */
makeCateArray(cate1Obj,cate1Array,cateList,1);
makeCateArray(cate2Obj,cate2Array,cateList,2);
makeCateArray(cate3Obj,cate3Array,cateList,3);

$(document).ready(function(){
	console.log(cate1Array);
	console.log(cate2Array);
	console.log(cate3Array);
});


// 대분류 <option> 태그
for(let i = 0; i < cate1Array.length; i++){
	cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>" + cate1Array[i].cateName + "</option>");
}

/* 중분류 <option> 태그 */
$(cateSelect1).on("change",function(){
	
	let selectVal1 = $(this).find("option:selected").val();	
	
	cateSelect2.children().remove();
	cateSelect3.children().remove();
	
	cateSelect2.append("<option value='none'>선택</option>")
	cateSelect3.append("<option value='none'>선택</option>");
	
	for(let i = 0; i < cate2Array.length; i++){
		if(selectVal1 === cate2Array[i].cateParent){
			cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>");	
		}
	}// for
	
	/* 소분류 <option>태그 */
	$(cateSelect2).on("change",function(){
		
let selectVal2 = $(this).find("option:selected").val();
		
		cateSelect3.children().remove();
		
		
		cateSelect3.append("<option value='none'>선택</option>");		
		
		for(let i = 0; i < cate3Array.length; i++){
			if(selectVal2 === cate3Array[i].cateParent){
				cateSelect3.append("<option value='"+cate3Array[i].cateCode+"'>" + cate3Array[i].cateName + "</option>");	
			}
		}// for	
		
		
	});		
	
});


/* 할인율 Input 설정 */
$("#discount_interface").on("propertychange change keyup paste input", function(){
	
	let userInput = $("#discount_interface");
	let discountInput = $("input[name='productDiscount']");
	
	let discountRate = userInput.val();					// 사용자가 입력할 할인값
	let sendDiscountRate = discountRate / 100;					// 서버에 전송할 할인값
	let goodsPrice = $("input[name='productPrice']").val();			// 원가
	let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
	        
	if(!isNaN(discountRate)){
	$(".span_discount").html(discountPrice);
	
	discountInput.val(sendDiscountRate);	
	}
});	

$("input[name='productPrice']").on("change", function(){
	
	let userInput = $("#discount_interface");
	let discountInput = $("input[name='productDiscount']");
	
	let discountRate = userInput.val();					// 사용자가 입력한 할인값
	let sendDiscountRate = discountRate / 100;			// 서버에 전송할 할인값
	let goodsPrice = $("input[name='productPrice']").val();			// 원가
	let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
	
	if(!isNaN(discountRate)){
	$(".span_discount").html(discountPrice);
	}
});

/* 이미지 업로드 */
$("input[type='file']").on("change", function(e){
	
	/* 이미지 존재시 삭제 */
	if($(".imgDeleteBtn").length > 0){
		deleteFile();
	}
	
	
	let formData = new FormData();
	let fileInput = $('input[name="uploadFile"]');
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
	
	if(!fileCheck(fileObj.name, fileObj.size)){
		return false;
	} 
	
	formData.append("uploadFile", fileObj);
	
	/* 파일 여러개 선택할 때 
	for(let i = 0; i < fileList.length; i++){
		formData.append("uploadFile", fileList[i]);
	}
	 */
	 
	$.ajax({
		url: '/admin/uploadAjaxAction',
    	processData : false,
    	contentType : false,
    	data : formData,
    	type : 'POST',
    	dataType : 'json',
    	success : function(result){
    		console.log(result);
    		showUploadImage(result);
    	},
    	error : function(result){
    		alert("이미지 파일이 아닙니다.");
    	}
	});	
	
	
	
});

/* var, method related with attachFile */
let regex = new RegExp("(.*?)\.(jpg|png)$");
let maxSize = 10485760; //1MB	

function fileCheck(fileName, fileSize){

	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
		  
	if(!regex.test(fileName)){
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	
	return true;
	
}


/* 이미지 출력 */
function showUploadImage(uploadResultArr){
	
	/* 전달받은 데이터 검증 */
	if(!uploadResultArr || uploadResultArr.length == 0){return}
	
	let uploadResult = $("#uploadResult");
	
	let obj = uploadResultArr[0];
	
	let str = "";
	
	let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
	
	
	str += "<div id='result_card'>";
	str += "<img src='/display?fileName=" + fileCallPath +"'>";
	str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
	str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
	str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
	str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";
	str += "</div>";		
	
		uploadResult.append(str);     
    
}	

/* 이미지 삭제 버튼 동작 */
$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
	
	deleteFile();
	
});


/* 파일 삭제 메서드 */
function deleteFile(){
	
	let targetFile = $(".imgDeleteBtn").data("file");
	
	let targetDiv = $("#result_card");
	
	$.ajax({
		url: '/admin/deleteFile',
		data : {fileName : targetFile},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			console.log(result);
			
			targetDiv.remove();
			$("input[type='file']").val("");
			
		},
		error : function(result){
			console.log(result);
			
			alert("파일을 삭제하지 못하였습니다.")
		}
	});
}








</script>

</body>
</html>
