package com.seo.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.seo.mapper.ProductMapper;
import com.seo.model.Criteria;
import com.seo.model.ProductVO;
import com.seo.model.SelectDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProductMapperTests {
	
	@Autowired
	private ProductMapper mapper;
	
	/*
	@Test
	public void getGoodsListTest() {
		
		Criteria cri = new Criteria();
		// 테스트 키워드
		cri.setKeyword("test");
		System.out.println("cri : " + cri);
		
		List<ProductVO> list = mapper.getGoodsList(cri);
		System.out.println("list : " + list);
		
		System.out.println("==========");
		int goodsTotal = mapper.goodsGetTotal(cri);
		System.out.println("totla : " + goodsTotal);
		
	}
	*/
	
	/* 판매자 id 리스트 요청 */
	/*
	@Test
	public void getSellerId() {
		
		String keyword = "폴";
		
		String[] list = mapper.getSellerIdList(keyword);
		
		System.out.println("결과 : " + list.toString());
		
		for(String id : list) {
			System.out.println("개별 결과 : " + id);
		}
		
		
	}
	*/
	
	/* 검색 (동적 쿼리 적용, 조건 x) */
	/*
	@Test 
	public void getGoodsListTest0() {
		Criteria cri = new Criteria();
		String type = "";
		String keyword = "";
		String catecode = "";
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setSellerArr(mapper.getSellerIdList(keyword));
		cri.setCateCode(catecode);
		
		List<ProductVO> list = mapper.getGoodsList(cri);
		
		System.out.println("cri : " + cri);
		System.out.println("list : " + list);
		
	}	
	*/
	
	/* 검색 (동적 쿼리 적용) - 판매자*/
	/*
	@Test 
	public void getGoodsListTest1() {
		//
		Criteria cri = new Criteria();
		String type = "A";
		//String keyword = "유홍준";	// DB에 존재하는 판매자
		String keyword = "머스크";	// DB에 존재하지 않는 판매자
		String catecode = "";
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setSellerArr(mapper.getSellerIdList(keyword));
		cri.setCateCode(catecode);
		
		List<ProductVO> list = mapper.getGoodsList(cri);
		
		System.out.println("cri : " + cri);
		System.out.println("list : " + list);
		
	}
	*/
	
	
	
	/* 검색 (동적 쿼리 적용) - 상품제목*/
	/*
	@Test 
	public void getGoodsListTest2() {
		Criteria cri = new Criteria();
		String type = "T";
		//String keyword = "테스트";			// 테이블에 등록된 상품 제목 데이터
		String keyword = "없음";				// 테이블에 등록되지 않은 데이터
		String catecode = "";	
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setSellerArr(mapper.getSellerIdList(keyword));
		cri.setCateCode(catecode);
		
		List<ProductVO> list = mapper.getGoodsList(cri);
		
		System.out.println("cri : " + cri);
		System.out.println("list : " + list);
		
	}
	*/
	
	/* 검색 (동적 쿼리 적용) - 카테고리*/
	/*
	@Test 
	public void getGoodsListTest3() {
		Criteria cri = new Criteria();
		String type = "C";
		String keyword = "";
		String catecode = "103002";		
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setSellerArr(mapper.getSellerIdList(keyword));
		cri.setCateCode(catecode);
		
		List<ProductVO> list = mapper.getGoodsList(cri);
		
		System.out.println("cri : " + cri);
		System.out.println("list : " + list);
	}
	*/
	
	
	/* 검색 (동적 쿼리 적용) - 카테고리 + 판매자 */
	/*
	@Test 
	public void getGoodsListTest4() {
		Criteria cri = new Criteria();
		String type = "AC";
		//String keyword = "유홍준";	// 카테고리에 존재하는 판매자
		String keyword = "머스크";	// 카테고리에 존재하지 않는 판매자
		String catecode = "103002";
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setSellerArr(mapper.getSellerIdList(keyword));
		cri.setCateCode(catecode);
		
		List<ProductVO> list = mapper.getGoodsList(cri);
		
		System.out.println("cri : " + cri);
		System.out.println("list : " + list);	
		
	}
	*/
	
	
	
	/* 검색 (동적 쿼리 적용) - 카테고리 + 상품 제목 */
	/*
	@Test 
	public void getGoodsListTest5() {
		Criteria cri = new Criteria();
		String type = "CT";			// 카테고리에 존재하는 상품
		String keyword = "테스트";	// 카테고리에 존재하지 않는 상품
		//String keyword = "없음";
		String catecode = "102001";
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setSellerArr(mapper.getSellerIdList(keyword));
		cri.setCateCode(catecode);
		
		List<ProductVO> list = mapper.getGoodsList(cri);
		
		System.out.println("cri : " + cri);
		System.out.println("list : " + list);	
		
	}
	*/
	
	
	/* 카테고리 리스트 */
	/*
	@Test
	public void getCateListTest1() {
		
		Criteria cri = new Criteria();
		
		String type = "TC";
		String keyword = "test";
		//String type = "A";
		//String keyword = "유홍준";		

		cri.setType(type);
		cri.setKeyword(keyword);
		//cri.setSellerArr(mapper.getSellerIdList(keyword));		
		
		String[] cateList = mapper.getCateList(cri)		;
		for(String codeNum : cateList) {
			System.out.println("codeNum ::::: " + codeNum);
		}
		
		
	}	
	*/
	
	/* 카테고리 정보 얻기 */
	/*
	@Test
	public void getCateInfoTest1() {
		
		Criteria cri = new Criteria();
		
		String type = "TC";
		String keyword = "test";	
		String cateCode="103002";

		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setCateCode(cateCode);
		
		mapper.getCateInfo(cri);
		
	}	
	*/
	
	/* 상품 정보 */
	/*
	@Test
	public void getGoodsInfo() {
		int productId = 26;
		ProductVO goodsInfo = mapper.getGoodsInfo(productId);
		System.out.println("===========================");
		System.out.println(goodsInfo);
		System.out.println("===========================");
		
	}*/
	
	@Test
	public void likeSelectTest() {
		
		
		List<SelectDTO> likeSelect = mapper.likeSelect();
		for(SelectDTO dto : likeSelect) {
			System.out.println(dto);
		}
		
	}
			
		
	
}
