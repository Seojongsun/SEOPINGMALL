package com.seo.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.seo.mapper.OrderMapper;
import com.seo.model.MemberVO;
import com.seo.model.OrderDTO;
import com.seo.model.OrderItemDTO;
import com.seo.model.ProductVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class OrderMapperTests {

	@Autowired
	private OrderMapper mapper;
	
	/* 상품 정보(주문 처리) */
	@Test
	public void getOrderInfoTest() {
		
		 OrderItemDTO orderInfo = mapper.getOrderInfo(61);
		 
		 System.out.println("result : " + orderInfo);
	}
	
	/* seo_order 테이블 등록 */
	@Test
	public void enrollOrderTest() {
		
		OrderDTO ord = new OrderDTO();
		List<OrderItemDTO> orders = new ArrayList();
		
		OrderItemDTO order1 = new OrderItemDTO();
		
		order1.setProductId(61);
		order1.setProductCount(5);
		order1.setProductPrice(70000);
		order1.setProductDiscount(0.1);
		order1.initSaleTotal();
		
		
		
		ord.setOrders(orders);
		
		ord.setOrderId("2021_test1");
		ord.setAddressee("test");
		ord.setMemberId("admin");
		ord.setMemberAddr1("test");
		ord.setMemberAddr2("test");
		ord.setMemberAddr3("test");
		ord.setOrderState("배송중비");
		ord.getOrderPriceInfo();
		ord.setUsePoint(1000);
		
		mapper.enrollOrder(ord);		
		
	}
	
	/* seo_itemorder 테이블 등록 */
	@Test
	public void enrollOrderItemTest() {
		
		OrderItemDTO oid = new OrderItemDTO();
		
		oid.setOrderId("2021_test1");
		oid.setProductId(61);
		oid.setProductCount(1);
		oid.setProductPrice(70000);
		oid.setProductDiscount(0.1);
				
		oid.initSaleTotal();
		
		mapper.enrollOrderItem(oid);
		
	}	
	
	/* 회원 돈, 포인트 정보 변경 */
	@Test
	public void deductMoneyTest() {
		
		MemberVO member = new MemberVO();
		
		member.setMemberId("admin");
		member.setMoney(500000);
		member.setPoint(10000);
		
		mapper.deductMoney(member);
	}
	
	/* 상품 재고 변경 */
	@Test
	public void deductStockTest() {
		ProductVO product = new ProductVO();
		
		product.setProductId(61);
		product.setProductStock(77);
		
		mapper.deductStock(product);
	}	
		

	
}
