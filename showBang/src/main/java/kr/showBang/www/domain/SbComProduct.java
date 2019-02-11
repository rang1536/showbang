package kr.showBang.www.domain;

import java.util.List;

public class SbComProduct {
	private int proNo;
	private String proName;
	private String proComment;
	private String proRegdate;
	private String proLastDate;
	private String proSummery;
	private int proPrice;
	private int proDiscount;
	private int customerCnt;
	private String proSumnail;
	private int comNo;
	private int proType;
	
	private List<SbImg> imgList;
	
	
	public List<SbImg> getImgList() {
		return imgList;
	}
	public void setImgList(List<SbImg> imgList) {
		this.imgList = imgList;
	}
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProComment() {
		return proComment;
	}
	public void setProComment(String proComment) {
		this.proComment = proComment;
	}
	public String getProRegdate() {
		return proRegdate;
	}
	public void setProRegdate(String proRegdate) {
		this.proRegdate = proRegdate;
	}
	public String getProLastDate() {
		return proLastDate;
	}
	public void setProLastDate(String proLastDate) {
		this.proLastDate = proLastDate;
	}
	public String getProSummery() {
		return proSummery;
	}
	public void setProSummery(String proSummery) {
		this.proSummery = proSummery;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	public int getProDiscount() {
		return proDiscount;
	}
	public void setProDiscount(int proDiscount) {
		this.proDiscount = proDiscount;
	}
	public int getCustomerCnt() {
		return customerCnt;
	}
	public void setCustomerCnt(int customerCnt) {
		this.customerCnt = customerCnt;
	}
	public String getProSumnail() {
		return proSumnail;
	}
	public void setProSumnail(String proSumnail) {
		this.proSumnail = proSumnail;
	}
	public int getComNo() {
		return comNo;
	}
	public void setComNo(int comNo) {
		this.comNo = comNo;
	}
	public int getProType() {
		return proType;
	}
	public void setProType(int proType) {
		this.proType = proType;
	}
	@Override
	public String toString() {
		return "SbComProduct [proNo=" + proNo + ", proName=" + proName + ", proComment=" + proComment + ", proRegdate="
				+ proRegdate + ", proLastDate=" + proLastDate + ", proSummery=" + proSummery + ", proPrice=" + proPrice
				+ ", proDiscount=" + proDiscount + ", customerCnt=" + customerCnt + ", proSumnail=" + proSumnail
				+ ", comNo=" + comNo + ", proType=" + proType + ", imgList=" + imgList + "]";
	}
	
	
}
