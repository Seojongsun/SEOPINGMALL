package com.seo.service;

import java.util.List;

import com.seo.model.AttachImageVO;
import com.seo.model.CateVO;
import com.seo.model.Criteria;
import com.seo.model.OrderDTO;
import com.seo.model.ProductVO;

public interface AdminService {

	/* 상품 등록 */
	public void productEnroll(ProductVO product);	
	
	/* 카테고리 리스트 */
	public List<CateVO> cateList();
	
	/* 상품 리스트 */
	public List<ProductVO> goodsGetList(Criteria cri);
	
	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);		
	
	/* 상품 조회 페이지 */
	public ProductVO goodsGetDetail(int productId);	
	
	/* 상품 수정 */
	public int goodsModify(ProductVO vo);	
	
	/* 상품 정보 삭제 */
	public int goodsDelete(int productId);	
	
	/* 지정 상품 이미지 정보 얻기 */
	public List<AttachImageVO> getAttachInfo(int productId);		
	
	/* 주문 상품 리스트 */
	public List<OrderDTO> getOrderList(Criteria cri);
	
	/* 주문 총 갯수 */
	public int getOrderTotal(Criteria cri);		
	
}
