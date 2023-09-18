package com.seo.model;

import java.util.Date;

public class SellerVO {

	/* 판매자 아이디 */
	private int sellerId;
	
	/* 판매자 이름 */
	private String sellerName;
	
	/* 국가 id */
	private String nationId;
	
	/* 판매자 국가 */
	private String nationName;
	
	/* 판매자 소개 */
	private String sellerIntro;
	
	/*등록 날짜*/
	private Date regDate;
	
	/* 수정 날짜 */
	private Date updateDate;

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

	public String getNationId() {
		return nationId;
	}

	public void setNationId(String nationId) {
		this.nationId = nationId;
		if(nationId.equals("01")) {
			this.nationName = "국내";
		} else {
			this.nationName = "국외";
		}		
	}

	public String getNationName() {
		return nationName;
	}

	public void setNationName(String nationName) {
		this.nationName = nationName;
	}

	public String getSellerIntro() {
		return sellerIntro;
	}

	public void setSellerIntro(String sellerIntro) {
		this.sellerIntro = sellerIntro;
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

	@Override
	public String toString() {
		return "SellerVO [sellerId=" + sellerId + ", sellerName=" + sellerName + ", nationId=" + nationId
				+ ", nationName=" + nationName + ", sellerIntro=" + sellerIntro + ", regDate=" + regDate
				+ ", updateDate=" + updateDate + "]";
	}
		
}
