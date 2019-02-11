package kr.showBang.www.domain;

public class SbWmoType {
	private int wmoNo;
	private int wmNo;
	private String wmType;
	public int getWmoNo() {
		return wmoNo;
	}
	public void setWmoNo(int wmoNo) {
		this.wmoNo = wmoNo;
	}
	public int getWmNo() {
		return wmNo;
	}
	public void setWmNo(int wmNo) {
		this.wmNo = wmNo;
	}
	public String getWmType() {
		return wmType;
	}
	public void setWmType(String wmType) {
		this.wmType = wmType;
	}
	
	@Override
	public String toString() {
		return "SbWmoType [wmoNo=" + wmoNo + ", wmNo=" + wmNo + ", wmType=" + wmType + "]";
	}
	
}
