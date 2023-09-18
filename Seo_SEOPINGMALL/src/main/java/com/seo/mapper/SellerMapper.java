package com.seo.mapper;

import java.util.List;

import com.seo.model.Criteria;
import com.seo.model.SellerVO;

public interface SellerMapper {

	/* 판매자 등록 */
	public void sellerEnroll(SellerVO seller);
	
	/* 판매자 목록 */
	public List<SellerVO> sellerGetList(Criteria cri);
	
	/* 판매자 총 수 */
	public int sellerGetTotal(Criteria cri);
	
	/* 판매자 상세 */
	public SellerVO sellerGetDetail(int sellerId);	
	
	/* 판매자 정보 수정 */
	public int sellerModify(SellerVO seller);	
	
	/* 판매자 정보 삭제 */
	public int sellerDelete(int sellerId);	
	
}
