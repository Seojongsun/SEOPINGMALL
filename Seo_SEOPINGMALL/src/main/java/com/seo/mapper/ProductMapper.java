package com.seo.mapper;

import java.util.List;

import com.seo.model.CateFilterDTO;
import com.seo.model.CateVO;
import com.seo.model.Criteria;
import com.seo.model.ProductVO;
import com.seo.model.SelectDTO;

public interface ProductMapper {

	/* 상품 검색 */
	public List<ProductVO> getGoodsList(Criteria cri);
	
	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri);		
	
	/* 판매자 id 리스트 요청 */
	public String[] getSellerIdList(String keyword);	
	
	/* 국내 카테고리 리스트 */
	public List<CateVO> getCateCode1();
	
	/* 외국 카테고리 리스트 */
	public List<CateVO> getCateCode2();		
	
	/* 검색 대상 카테고리 리스트 */
	public String[] getCateList(Criteria cri);
	
	/* 카테고리 정보(+검색대상 갯수) */
	public CateFilterDTO getCateInfo(Criteria cri);	
	
	/* 상품 정보 */
	public ProductVO getGoodsInfo(int productId);	
	
	/* 상품 id 이름 */
	public ProductVO getProductIdName(int productId);	
	
	/* 평줌순 상품 정보 */
	public List<SelectDTO> likeSelect();	
	
}
