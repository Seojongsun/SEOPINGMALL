package com.seo.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.seo.model.SellerVO;
import com.seo.service.SellerService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SellerServiceTests {
	
	/*SellereService 의존성 주입*/
	@Autowired
	private SellerService service;
	
	/* 판매자 등록 테스트 */
	/*
	@Test
	public void sellerEnrollTest() throws Exception {

		SellerVO seller = new SellerVO();
		
		seller.setNationId("01");
		seller.setSellerName("테스트");
		seller.setSellerIntro("테스트 소개");
		
		service.sellerEnroll(seller);
		
	}
	*/
	
	/* 판매자 목록 구현 */
	/*
	@Test	
	public void sellerGetListTest() throws Exception{
		
		Criteria cri = new Criteria(3, 10);
		
		List list = service.sellerGetList(cri);
		
		for(int i = 0; i < list.size(); i++) {
			System.out.println("list" + i + "......." + list.get(i));
		}
		
	}
	*/
	
	/*판매자 상세 페이지*/
	/*
	@Test
	public void sellerGetDetailTest() throws Exception{
		
		int sellerId = 20;
		
		Log.info("seller......" + service.sellerGetDetail(sellerId));
		
	}
	*/
	
	/* 판매자 정보 수정 */
	@Test
	public void sellerModifyTest() throws Exception {
		
		SellerVO seller = new SellerVO();
				
		seller.setSellerId(1);
		System.out.println("(service)수정 전...................." + service.sellerGetDetail(seller.getSellerId()));
		
		seller.setSellerName("(service)수정");
		seller.setNationId("01");
		seller.setSellerIntro("(service)소개 수정 하였습니다.");
		
		service.sellerModify(seller);
		System.out.println("(service)수정 후...................." + service.sellerGetDetail(seller.getSellerId()));
		
	}

}
