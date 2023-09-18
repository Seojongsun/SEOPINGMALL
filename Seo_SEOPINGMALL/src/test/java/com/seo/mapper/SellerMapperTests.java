package com.seo.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.seo.mapper.SellerMapper;
import com.seo.model.Criteria;
import com.seo.model.SellerVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SellerMapperTests {

	@Autowired
	private SellerMapper mapper;
	
	/* 판매자 등록 테스트 */
	/*
	@Test
	public void sellerEnroll() throws Exception{
		
		SellerVO seller = new SellerVO();
		
		seller.setNationId("01");
		seller.setSellerName("테스트");
		seller.setSellerIntro("테스트 소개");
		
		mapper.sellerEnroll(seller);
		
	}	
	*/
	
	/* 판매자 목록 테스트 */
	/*
	@Test
	public void sellerGetListTest() throws Exception{
		
		Criteria cri = new Criteria(3,10);	// 3페이지 & 10개 행 표시
		cri.setKeyword("엘런");
		
		List<SellerVO> list = mapper.sellerGetList(cri);
		
		for(int i = 0; i < list.size(); i++) {
			System.out.println("list" + i + ".........." + list.get(i));
		}
		
	}
	*/
	
	/* 판매자 총 수 */
	/*
	@Test
	public void sellerGetTotalTest() throws Exception{
		
		Criteria cri = new Criteria();
		cri.setKeyword("엘런");
		
		int total = mapper.sellerGetTotal(cri);
		
		System.out.println("total........." + total);
		
		
	}
	*/
	
	/* 판매자 상세 페이지 */
	/*
	@Test
	public void sellerGetDetailTest() {
		
		int sellerId = 30;
		
		SellerVO seller = mapper.sellerGetDetail(sellerId);
		
		System.out.println("seller......." + seller);
		
	}
	*/
	
	/* 판매자 정보 수정 */
	/*
	@Test
	public void sellerModifyTest() {
		
		SellerVO seller = new SellerVO();
				
		seller.setSellerId(1);
		System.out.println("수정 전...................." + mapper.sellerGetDetail(seller.getSellerId()));
		
		seller.setSellerName("수정");
		seller.setNationId("01");
		seller.setSellerIntro("소개 수정 하였습니다.");
		
		mapper.sellerModify(seller);
		System.out.println("수정 후...................." + mapper.sellerGetDetail(seller.getSellerId()));
		
	}
	*/
	
	/* 판매자 정보 삭제 */
	@Test
	public void sellerDeleteTest() {
		
		
		int sellerId = 13;
		
		int result = mapper.sellerDelete(sellerId);
		
		if(result == 1) {
			System.out.println("삭제 성공");
		}
		
	}	
	
	
}
