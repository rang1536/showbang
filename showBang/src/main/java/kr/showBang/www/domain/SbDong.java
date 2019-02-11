package kr.showBang.www.domain;

public class SbDong {
	private int dongNo;
	private String dongName;
	private int localNo;
	public int getDongNo() {
		return dongNo;
	}
	public void setDongNo(int dongNo) {
		this.dongNo = dongNo;
	}
	public String getDongName() {
		return dongName;
	}
	public void setDongName(String dongName) {
		this.dongName = dongName;
	}
	public int getLocalNo() {
		return localNo;
	}
	public void setLocalNo(int localNo) {
		this.localNo = localNo;
	}
	@Override
	public String toString() {
		return "SbDong [dongNo=" + dongNo + ", dongName=" + dongName + ", localNo=" + localNo + "]";
	}
	
	
}
