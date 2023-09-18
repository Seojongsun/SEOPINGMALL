package com.seo.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.seo.mapper.CartMapper;
import com.seo.model.CartDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CartMapperTests {

	@Autowired
	private CartMapper mapper;

	/*카트 등록*/
	/*
	@Test
	public void addCart() {
		String memberId = "admin";
		int productId = 65;
		int count = 2;
		
		CartDTO cart = new CartDTO();
		cart.setMemberId(memberId);
		cart.setProductId(productId);
		cart.setProductCount(count);
		
		int result = 0;
		try {
			result = mapper.addCart(cart);
		} catch (Exception e) {
			System.out.println("에러 발생");
		}
		
		System.out.println("결과 : " + result);
		
	}	
	 */
	
	/* 카트 삭제 */
	/*
	@Test
	public void deleteCartTest() {
		int cartId = 1;
		
		mapper.deleteCart(cartId);
	}
	*/
	
	/* 카트 수량 수정 */
	/*
	@Test
	public void modifyCartTest() {
		int cartId = 3;
		int count = 5;
		
		CartDTO cart = new CartDTO();
		cart.setCartId(cartId);
		cart.setProductCount(count);
		
		mapper.modifyCount(cart);
		
	}
	*/
	
	/*
	@Test
	public void getCartTest() {
		String memberId = "admin";
		
		
		List<CartDTO> list = mapper.getCart(memberId);
		for(CartDTO cart : list) {
			System.out.println(cart);
			cart.initSaleTotal();
			System.out.println("init cart : " + cart);
		}
		
		
	
	}
	*/
	
	/* 카트 확인 */
	/*
	@Test
	public void checkCartTest() {
		
		String memberId = "admin";
		int productId = 71;
		
		CartDTO cart = new CartDTO();
		cart.setMemberId(memberId);
		cart.setProductId(productId);
		
		CartDTO resutlCart = mapper.checkCart(cart);
		System.out.println("결과 : " + resutlCart);
		
	}
	*/	
	
	/* 장바구니 제거(주문 처리) */
	@Test
	public void deleteOrderCart() {
		String memberId = "admin";
		int productId = 3201;
		
		CartDTO dto = new CartDTO();
		dto.setMemberId(memberId);
		dto.setProductId(productId);
		
		mapper.deleteOrderCart(dto);
		
	}	

}
