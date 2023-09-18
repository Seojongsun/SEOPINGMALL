package com.seo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seo.mapper.AdminMapper;
import com.seo.mapper.AttachMapper;
import com.seo.mapper.ProductMapper;
import com.seo.model.AttachImageVO;
import com.seo.model.CateFilterDTO;
import com.seo.model.CateVO;
import com.seo.model.Criteria;
import com.seo.model.ProductVO;
import com.seo.model.SelectDTO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductMapper productMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	@Autowired
	private AdminMapper adminMapper;	
	
	/* 상품 검색 */
	@Override
	public List<ProductVO> getGoodsList(Criteria cri) {
		
		log.info("getGoodsList().......");
		
		String type = cri.getType();
		String[] typeArr = type.split("");
		String[] sellerArr = productMapper.getSellerIdList(cri.getKeyword());
		
		
		if(type.equals("S") || type.equals("SC") || type.equals("SN") || type.equals("SCN")) {
			if(sellerArr.length == 0) {
				return new ArrayList();
			}
		}
		
		for(String t : typeArr) {
			if(t.equals("S")) {
				cri.setSellerArr(sellerArr);
			}
		}		
		
		List<ProductVO> list = productMapper.getGoodsList(cri);
		
		list.forEach(product -> {
			
			int productId = product.getProductId();
			
			List<AttachImageVO> imageList = attachMapper.getAttachList(productId);
			
			product.setImageList(imageList);
			
		});
		
		return list;
	}

	/* 사품 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		
		log.info("goodsGetTotal().......");
		
		return productMapper.goodsGetTotal(cri);
		
	}	
	
	/* 국내 카테고리 리스트 */
	@Override
	public List<CateVO> getCateCode1() {
		
		log.info("getCateCode1().........");
		
		return productMapper.getCateCode1();
	}

	/* 외국 카테고리 리스트 */
	@Override
	public List<CateVO> getCateCode2() {
		
		log.info("getCateCode2().........");
		
		return productMapper.getCateCode2();
	}

	
	/* 검색결과 카테고리 필터 정보 */
	@Override
	public List<CateFilterDTO> getCateInfoList(Criteria cri) {

		List<CateFilterDTO> filterInfoList = new ArrayList<CateFilterDTO>();
		
		String[] typeArr = cri.getType().split("");
		String [] sellerArr;
		
		for(String type : typeArr) {
			if(type.equals("S")){
				sellerArr = productMapper.getSellerIdList(cri.getKeyword());
				if(sellerArr.length == 0) {
					return filterInfoList;
				}
				cri.setSellerArr(sellerArr);
			}
		}
		
		String[] cateList = productMapper.getCateList(cri);
		
		String tempCateCode = cri.getCateCode();
		
		for(String cateCode : cateList) {
			cri.setCateCode(cateCode);
			CateFilterDTO filterInfo = productMapper.getCateInfo(cri);
			filterInfoList.add(filterInfo);
		}
		
		cri.setCateCode(tempCateCode);
		
		return filterInfoList;
	}		
	
	/* 상품 정보 */
	@Override
	public ProductVO getGoodsInfo(int productId) {
		
		ProductVO goodsInfo = productMapper.getGoodsInfo(productId);
		goodsInfo.setImageList(adminMapper.getAttachInfo(productId));
		
		
		return goodsInfo;
	}		
	
	
	@Override
	public ProductVO getProductIdName(int productId) {
		
		return productMapper.getProductIdName(productId);
	}

	@Override
	public List<SelectDTO> likeSelect() {
		
		List<SelectDTO> list = productMapper.likeSelect();
		
		list.forEach(dto -> {
			
			int productId = dto.getProductId();
			
			List<AttachImageVO> imageList = attachMapper.getAttachList(productId);
			
			dto.setImageList(imageList);
			
		});				
		
		
		return list;	

	}		
	
}
