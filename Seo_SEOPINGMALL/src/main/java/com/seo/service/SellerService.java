package com.seo.service;

import java.util.List;

import com.seo.model.Criteria;
import com.seo.model.SellerVO;

public interface SellerService {

	/* 판매자 등록 */
	public void sellerEnroll(SellerVO seller) throws Exception;
	
	/* 판매자 목록 */
	public List<SellerVO> sellerGetList(Criteria cri) throws Exception;
	
	/* 판매자 총 수 */
	public int sellerGetTotal(Criteria cri) throws Exception;
	
	/* 판매자 상세 페이지 */
	public SellerVO sellerGetDetail(int sellerId) throws Exception;	
	
	/* 판매자 정보 수정 */
	public int sellerModify(SellerVO seller) throws Exception;		
	
	/* 판매자 정보 삭제 */
	public int sellerDelete(int sellerId);	
	
}
