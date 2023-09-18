package com.seo.service;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.seo.model.AttachImageVO;
import com.seo.model.ProductVO;
import com.seo.service.AdminService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminServiceTests {

	@Autowired
	private AdminService service;
	
	
	/* 상품 등록 & 상품 이미지 등록 테스트 */
	@Test
	public void productEnrollTEsts() {

		ProductVO product = new ProductVO();
		// 상품 정보
		product.setProductName("service 테스트");
		product.setSellerId(27);
		product.setMakeDate("2021-03-18");
		product.setMaker("출판사");
		product.setCateCode("202001");
		product.setProductPrice(20000);
		product.setProductStock(300);
		product.setProductDiscount(0.23);
		product.setProductIntro("상품 소개 ");
		product.setProductContents("상품 목차 ");

		// 이미지 정보
		List<AttachImageVO> imageList = new ArrayList<AttachImageVO>(); 
		
		AttachImageVO image1 = new AttachImageVO();
		AttachImageVO image2 = new AttachImageVO();
		
		image1.setFileName("test Image 1");
		image1.setUploadPath("test image 1");
		image1.setUuid("test11112");
		
		image2.setFileName("test Image 2");
		image2.setUploadPath("test image 2");
		image2.setUuid("test22222");
		
		imageList.add(image1);
		imageList.add(image2);
		
		
		product.setImageList(imageList);
		
		// productEnroll() 메서드 호출
		service.productEnroll(product);
		
		System.out.println("등록된 VO : " + product);
		
		
	}
	
}
