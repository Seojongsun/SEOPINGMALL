package com.seo.model;

import java.util.Date;
import java.util.List;

public class ProductVO {

	/* 상품 id */
	private int productId;
	
	/* 상품 이름 */
	private String productName;
	
	/* 판매자 id */
	private int sellerId;
	
	/* 판매자 이름 */
	private String sellerName;
	
	/* 출판일 */
	private String makeDate;
	
	/* 출판사 */
	private String maker;
	
	/* 카테고리 코드 */
	private String cateCode;
	
	/* 카테고리 이름 */
	private String cateName;
	
	/* 상품 가격 */
	private int productPrice;
	
	/* 상품 재고 */
	private int productStock;
	
	/* 상품 할인률(백분율) */
	private double productDiscount;
	
	/* 상품 소개 */
	private String productIntro;
	
	/* 상품 목차 */
	private String productContents;
	
	/* 등록 날짜 */
	private Date regDate;
	
	/* 수정 날짜 */
	private Date updateDate;
	
	/* 이미지 정보 */
	private List<AttachImageVO> imageList;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getMakeDate() {
		return makeDate;
	}

	public void setMakeDate(String makeDate) {
		this.makeDate = makeDate;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductStock() {
		return productStock;
	}

	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}

	public double getProductDiscount() {
		return productDiscount;
	}

	public void setProductDiscount(double productDiscount) {
		this.productDiscount = productDiscount;
	}

	public String getProductIntro() {
		return productIntro;
	}

	public void setProductIntro(String productIntro) {
		this.productIntro = productIntro;
	}

	public String getProductContents() {
		return productContents;
	}

	public void setProductContents(String productContents) {
		this.productContents = productContents;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public List<AttachImageVO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}

	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", productName=" + productName + ", sellerId=" + sellerId + ", sellerName="
				+ sellerName + ", makeDate=" + makeDate + ", maker=" + maker + ", cateCode=" + cateCode
				+ ", cateName=" + cateName + ", productPrice=" + productPrice + ", productStock=" + productStock + ", productDiscount="
				+ productDiscount + ", productIntro=" + productIntro + ", productContents=" + productContents + ", regDate=" + regDate
				+ ", updateDate=" + updateDate + ", imageList=" + imageList + "]";
	}

}
