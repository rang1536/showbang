package kr.showBang.www.domain;

public class SbWmoLocal {
	private int wmoNo;
	private int wmNo;
	private String wmLocal;
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
	public String getWmLocal() {
		return wmLocal;
	}
	public void setWmLocal(String wmLocal) {
		this.wmLocal = wmLocal;
	}
	@Override
	public String toString() {
		return "SbWmoLocal [wmoNo=" + wmoNo + ", wmNo=" + wmNo + ", wmLocal=" + wmLocal + "]";
	}
	
	
}
