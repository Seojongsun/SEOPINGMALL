package com.seo.service;

import java.util.List;

import com.seo.model.OrderCancelDTO;
import com.seo.model.OrderDTO;
import com.seo.model.OrderPageItemDTO;

public interface OrderService {

	/* 주문 정보 */
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);	
	
	/* 주문 */
	public void  order(OrderDTO orw);	
	
	/* 주문 취소 */
	public void orderCancle(OrderCancelDTO dto);	
	
}
