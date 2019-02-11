package kr.showBang.www.domain;

public class SbImg {
	private int imgNo;
	private String imgPath;
	private String imgFileName;
	private int mNo;
	private int userNo;
	private String originalName;
	private int proNo;
	
	
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public int getImgNo() {
		return imgNo;
	}
	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getImgFileName() {
		return imgFileName;
	}
	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	@Override
	public String toString() {
		return "SbImg [imgNo=" + imgNo + ", imgPath=" + imgPath + ", imgFileName=" + imgFileName + ", mNo=" + mNo
				+ ", userNo=" + userNo + ", originalName=" + originalName + ", proNo=" + proNo + "]";
	}
	
}
