package com.spring.practice.product.dto;

public class ProductDTO {
	private String allergy;
	private String imgurl1;
	private String manufacture;
	private String prdkind;
	private String prdlstNm;
	private String productGb;
	private String rawntrl;
	private int rnum;
	
	public ProductDTO() {
	}

	public ProductDTO(String allergy, String imgurl1, String manufacture, String prdkind, String prdlstNm,
			String productGb, String rawntrl, int rnum) {
		super();
		this.allergy = allergy;
		this.imgurl1 = imgurl1;
		this.manufacture = manufacture;
		this.prdkind = prdkind;
		this.prdlstNm = prdlstNm;
		this.productGb = productGb;
		this.rawntrl = rawntrl;
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "ProductDTO [allergy=" + allergy + ", imgurl1=" + imgurl1 + ", manufacture=" + manufacture + ", prdkind="
				+ prdkind + ", prdlstNm=" + prdlstNm + ", productGb=" + productGb + ", rawntrl=" + rawntrl + ", rnum="
				+ rnum + "]";
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	public String getImgurl1() {
		return imgurl1;
	}

	public void setImgurl1(String imgurl1) {
		this.imgurl1 = imgurl1;
	}

	public String getManufacture() {
		return manufacture;
	}

	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}

	public String getPrdkind() {
		return prdkind;
	}

	public void setPrdkind(String prdkind) {
		this.prdkind = prdkind;
	}

	public String getPrdlstNm() {
		return prdlstNm;
	}

	public void setPrdlstNm(String prdlstNm) {
		this.prdlstNm = prdlstNm;
	}

	public String getProductGb() {
		return productGb;
	}

	public void setProductGb(String productGb) {
		this.productGb = productGb;
	}

	public String getRawntrl() {
		return rawntrl;
	}

	public void setRawntrl(String rawntrl) {
		this.rawntrl = rawntrl;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	
	
}
