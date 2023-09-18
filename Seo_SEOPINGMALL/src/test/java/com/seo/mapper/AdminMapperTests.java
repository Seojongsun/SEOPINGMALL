package com.seo.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.seo.mapper.AdminMapper;
import com.seo.model.AttachImageVO;
import com.seo.model.Criteria;
import com.seo.model.OrderDTO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests {

	@Autowired
	private AdminMapper mapper;
	
	/* 상품 등록 */
	/*
	@Test
	public void productEnrollTest() throws Exception{
		
		ProductVO product = new ProductVO();
		
		product.setProductName("mapper 테스트");
		product.setSellerId(27);
		product.setMakeDate("2021-03-18");
		product.setMaker("출판사");
		product.setCateCode("202001");
		product.setProductPrice(20000);
		product.setProductStock(300);
		product.setProductDiscount(0.23);
		product.setProductIntro("상품 소개 ");
		product.setProductContents("상품 목차 ");
		
		System.out.println("Before ProductVO :" + product);
		
		mapper.productEnroll(product);
		
		System.out.println("After ProductVO :" + product);
		
	}
	*/
	
	/* 카테고리 리스트 */
	/*
	@Test
	public void cateListTest() throws Exception{
		
		System.out.println("cateList()..........." + mapper.cateList());
		
	}
	*/
	
	/* 상품 리스트 & 상품 총 개수*/
	/*
	@Test
	public void goodsGetListTests() {
		
		Criteria cri = new Criteria();
		
		cri.setKeyword("test");
		
		// 상품 리스트 
		List list = mapper.goodsGetList(cri);
		for(int i = 0; i < 10; i++) {
			System.out.println("result..........." +i + " : " + list.get(i) );
		}
		
		
		
		/// 상품 총 개수 
		//int result = mapper.goodsGetTotal(cri);
		//System.out.println("resout........." + result);
		
	}
	*/
	
	/* 상품 조회 페이지 */
	/*
	@Test
	public void goodsGetDetailTest() {
		
		int productId = 134;
		
		ProductVO result = mapper.goodsGetDetail(productId);
		
		System.out.println("상품 상페 결과 : " + result);
		
		
	}
	*/
	
	/* 상품 정보 수정 */
	/*
	@Test
	public void goodsModifyTest() {
		
		ProductVO product = new ProductVO();
		
		product.setProductId(95);
		product.setProductName("mapper 테스트");
		product.setSellerId(94);
		product.setMakeDate("2021-03-18");
		product.setMaker("출판사");
		product.setCateCode("103002");
		product.setProductPrice(20000);
		product.setProductStock(300);
		product.setProductDiscount(0.23);
		product.setProductIntro("상품 소개 ");
		product.setProductContents("상품 목차 ");
		
		mapper.goodsModify(product);
		
	}
	*/
	
	/* 상품 정보 삭제 */
	/*
	@Test
	public void goodsDeleteTest() {
		
		int productId = 169;
		
		int result = mapper.goodsDelete(productId);
		
		if(result == 1) {
			System.out.println("삭제 성공");
		}
		
	}
	*/	
	
	/* 이미지 등록 */
	/*
	@Test
	public void imageEnrollTest() {
		
		AttachImageVO vo = new AttachImageVO();
		
		vo.setProductId(137);
		vo.setFileName("test");
		vo.setUploadPath("test");
		vo.setUuid("test2");
		
		mapper.imageEnroll(vo);
		
	}
	*/
	
	/* 지정 상품 이미지 삭제 */
	/*
	@Test
	public void deleteImageAllTest() {
		
		int productId = 3124;
		
		mapper.deleteImageAll(productId);
		
	}
	*/
	
	/* 어제자 날짜 이미지 리스트 */
	/*
	@Test
	public void checkImageListTest() {
		
		mapper.checkFileList();
		
	}
	*/
	
	/* 지정 상품 이미지 정보 얻기 */
	/*
	@Test
	public void getAttachInfoTest() {
		
		int productId = 3141;
		
		List<AttachImageVO> list = mapper.getAttachInfo(productId);
		
		System.out.println("list : " + list);
		
	}		
	*/
	
	/* 주문 현황 리스트 */
	@Test
	public void getOrderList() {
		
		Criteria cri = new Criteria();
		
		//String memberId = "admin";
		//String memberId = "";
		String memberId = null;
		cri.setKeyword(memberId);
		
		List<OrderDTO> orderList = mapper.getOrderList(cri);
		mapper.getOrderTotal(cri);
		
		for(OrderDTO dto : orderList) {
			System.out.println("dto : " + dto);
		}
		
	}	
	
	
}
