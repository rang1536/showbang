package kr.showBang.www.domain;

public class SbOption {
	private int optionNo;
	private String optionName;
	public int getOptionNo() {
		return optionNo;
	}
	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	@Override
	public String toString() {
		return "SbOption [optionNo=" + optionNo + ", optionName=" + optionName + "]";
	}
	
	
}
