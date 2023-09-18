package com.seo.service;

import java.util.List;

import com.seo.model.CateFilterDTO;
import com.seo.model.CateVO;
import com.seo.model.Criteria;
import com.seo.model.ProductVO;
import com.seo.model.SelectDTO;

public interface ProductService {

	/* 상품 검색 */
	public List<ProductVO> getGoodsList(Criteria cri);
	
	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri);	
	
	/* 국내 카테고리 리스트 */
	public List<CateVO> getCateCode1();
	
	/* 외국 카테고리 리스트 */
	public List<CateVO> getCateCode2();	
	
	/* 검색결과 카테고리 필터 정보 */
	public List<CateFilterDTO> getCateInfoList(Criteria cri);
	
	/* 상품 정보 */
	public ProductVO getGoodsInfo(int productId);	
	
	/* 상품 id 이름 */
	public ProductVO getProductIdName(int productId);
	
	/* 평줌순 상품 정보 */
	public List<SelectDTO> likeSelect();	
	
}
