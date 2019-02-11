package kr.showBang.www.domain;

public class SbWmoCate {
	private int wmoNo;
	private int wmNo;
	private String wmCate;
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
	public String getWmCate() {
		return wmCate;
	}
	public void setWmCate(String wmCate) {
		this.wmCate = wmCate;
	}
	@Override
	public String toString() {
		return "SbWmoCate [wmoNo=" + wmoNo + ", wmNo=" + wmNo + ", wmCate=" + wmCate + "]";
	}
	
	
}
