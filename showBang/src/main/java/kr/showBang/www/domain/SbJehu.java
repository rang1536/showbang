package kr.showBang.www.domain;

public class SbJehu {
	private int jehuNo;
	private String jehuName;
	private String jehuNumber;
	private String jehuFileName;
	private String jehuFolder;
	private String jehuUrl;
	private String jehuCate;
	private int jehuMain;
	private String startDate;
	private String endDate;
	
	
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public int getJehuNo() {
		return jehuNo;
	}
	public void setJehuNo(int jehuNo) {
		this.jehuNo = jehuNo;
	}
	public String getJehuName() {
		return jehuName;
	}
	public void setJehuName(String jehuName) {
		this.jehuName = jehuName;
	}
	public String getJehuNumber() {
		return jehuNumber;
	}
	public void setJehuNumber(String jehuNumber) {
		this.jehuNumber = jehuNumber;
	}
	public String getJehuFileName() {
		return jehuFileName;
	}
	public void setJehuFileName(String jehuFileName) {
		this.jehuFileName = jehuFileName;
	}
	public String getJehuFolder() {
		return jehuFolder;
	}
	public void setJehuFolder(String jehuFolder) {
		this.jehuFolder = jehuFolder;
	}
	public String getJehuUrl() {
		return jehuUrl;
	}
	public void setJehuUrl(String jehuUrl) {
		this.jehuUrl = jehuUrl;
	}
	public String getJehuCate() {
		return jehuCate;
	}
	public void setJehuCate(String jehuCate) {
		this.jehuCate = jehuCate;
	}
	public int getJehuMain() {
		return jehuMain;
	}
	public void setJehuMain(int jehuMain) {
		this.jehuMain = jehuMain;
	}
	@Override
	public String toString() {
		return "SbJehu [jehuNo=" + jehuNo + ", jehuName=" + jehuName + ", jehuNumber=" + jehuNumber + ", jehuFileName="
				+ jehuFileName + ", jehuFolder=" + jehuFolder + ", jehuUrl=" + jehuUrl + ", jehuCate=" + jehuCate
				+ ", jehuMain=" + jehuMain + ", startDate=" + startDate + ", endDate=" + endDate + "]";
	}
	
}
