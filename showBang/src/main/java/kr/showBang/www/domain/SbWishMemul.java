package kr.showBang.www.domain;

import java.util.List;

public class SbWishMemul {
	private int wmNo;
	private int wmDong;
	private int wmTradePrice;
	private int wmDeposit;
	private int wmMonthlyPrice;
	private int userNo;
	
	//매물종류, 지역등 관련 변수
	private String wmCate;
	private String wmLocal;
	private String wmType;
	
	//매물종류, 지역등 관련 변수(조회용)
	private List<SbWmoCate> wmoCateList;
	private List<SbWmoLocal> wmoLocalList;
	private List<SbWmoType> wmoTypeList;
	
	
	public String getWmCate() {
		return wmCate;
	}
	public void setWmCate(String wmCate) {
		this.wmCate = wmCate;
	}
	public String getWmLocal() {
		return wmLocal;
	}
	public void setWmLocal(String wmLocal) {
		this.wmLocal = wmLocal;
	}
	public String getWmType() {
		return wmType;
	}
	public void setWmType(String wmType) {
		this.wmType = wmType;
	}
	public List<SbWmoCate> getWmoCateList() {
		return wmoCateList;
	}
	public void setWmoCateList(List<SbWmoCate> wmoCateList) {
		this.wmoCateList = wmoCateList;
	}
	public List<SbWmoLocal> getWmoLocalList() {
		return wmoLocalList;
	}
	public void setWmoLocalList(List<SbWmoLocal> wmoLocalList) {
		this.wmoLocalList = wmoLocalList;
	}
	public List<SbWmoType> getWmoTypeList() {
		return wmoTypeList;
	}
	public void setWmoTypeList(List<SbWmoType> wmoTypeList) {
		this.wmoTypeList = wmoTypeList;
	}
	public int getWmNo() {
		return wmNo;
	}
	public void setWmNo(int wmNo) {
		this.wmNo = wmNo;
	}
	public int getWmDong() {
		return wmDong;
	}
	public void setWmDong(int wmDong) {
		this.wmDong = wmDong;
	}
	public int getWmTradePrice() {
		return wmTradePrice;
	}
	public void setWmTradePrice(int wmTradePrice) {
		this.wmTradePrice = wmTradePrice;
	}
	public int getWmDeposit() {
		return wmDeposit;
	}
	public void setWmDeposit(int wmDeposit) {
		this.wmDeposit = wmDeposit;
	}
	public int getWmMonthlyPrice() {
		return wmMonthlyPrice;
	}
	public void setWmMonthlyPrice(int wmMonthlyPrice) {
		this.wmMonthlyPrice = wmMonthlyPrice;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	@Override
	public String toString() {
		return "SbWishMemul [wmNo=" + wmNo + ", wmDong=" + wmDong + ", wmTradePrice=" + wmTradePrice + ", wmDeposit="
				+ wmDeposit + ", wmMonthlyPrice=" + wmMonthlyPrice + ", userNo=" + userNo + ", wmCate=" + wmCate
				+ ", wmLocal=" + wmLocal + ", wmType=" + wmType + ", wmoCateList=" + wmoCateList + ", wmoLocalList="
				+ wmoLocalList + ", wmoTypeList=" + wmoTypeList + "]";
	}
	
}
