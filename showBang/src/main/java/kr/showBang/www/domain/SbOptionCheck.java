package kr.showBang.www.domain;

public class SbOptionCheck {
	private int no;
	private int optionNo;
	private int mNo;
	
	//옵션이름
	private String optionName;
	
	
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getOptionNo() {
		return optionNo;
	}
	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	@Override
	public String toString() {
		return "SbOptionCheck [no=" + no + ", optionNo=" + optionNo + ", mNo=" + mNo + ", optionName=" + optionName
				+ "]";
	}
	
}
