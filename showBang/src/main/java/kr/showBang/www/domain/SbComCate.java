package kr.showBang.www.domain;

public class SbComCate {
	private int comCateNo;
	private String comCateName;
	public int getComCateNo() {
		return comCateNo;
	}
	public void setComCateNo(int comCateNo) {
		this.comCateNo = comCateNo;
	}
	public String getComCateName() {
		return comCateName;
	}
	public void setComCateName(String comCateName) {
		this.comCateName = comCateName;
	}
	@Override
	public String toString() {
		return "SbComCate [comCateNo=" + comCateNo + ", comCateName=" + comCateName + "]";
	}
	
	
}
