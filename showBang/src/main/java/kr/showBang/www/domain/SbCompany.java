package kr.showBang.www.domain;

import java.io.File;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class SbCompany {
	private int comNo;
	private String comName;
	private String comRrn;
	private String comAddress;
	private String comTel;
	private String comRegdate;
	private String comPayInfo;
	private String comInfo;
	private String comCeoComment;
	private String comHp;
	private int comCateNo;
	private String thumnail;
	private int comPlus;
	private String comPlusLast;
	private String comMainImg;
	private String comAs;
	private String comAsImg;
	private String comCeoName;
	
	private String comAddSangse;
	private String comCateName;
	private List<SbComProduct> sbComProductList;
	
	//이미지파일
	private MultipartFile mainImg;
	private MultipartFile thumnailImg;
	
	public String getComAddSangse() {
		return comAddSangse;
	}

	public void setComAddSangse(String comAddSangse) {
		this.comAddSangse = comAddSangse;
	}

	public MultipartFile getMainImg() {
		return mainImg;
	}

	public void setMainImg(MultipartFile mainImg) {
		this.mainImg = mainImg;
	}

	public MultipartFile getThumnailImg() {
		return thumnailImg;
	}

	public void setThumnailImg(MultipartFile thumnailImg) {
		this.thumnailImg = thumnailImg;
	}

	public String getComCeoName() {
		return comCeoName;
	}

	public void setComCeoName(String comCeoName) {
		this.comCeoName = comCeoName;
	}

	public String getComAs() {
		return comAs;
	}

	public void setComAs(String comAs) {
		this.comAs = comAs;
	}

	public String getComAsImg() {
		return comAsImg;
	}

	public void setComAsImg(String comAsImg) {
		this.comAsImg = comAsImg;
	}

	public List<SbComProduct> getSbComProductList() {
		return sbComProductList;
	}

	public void setSbComProductList(List<SbComProduct> sbComProductList) {
		this.sbComProductList = sbComProductList;
	}

	public String getComMainImg() {
		return comMainImg;
	}

	public void setComMainImg(String comMainImg) {
		this.comMainImg = comMainImg;
	}

	public String getThumnail() {
		return thumnail;
	}

	public void setThumnail(String thumnail) {
		this.thumnail = thumnail;
	}

	public int getComPlus() {
		return comPlus;
	}

	public void setComPlus(int comPlus) {
		this.comPlus = comPlus;
	}

	public String getComPlusLast() {
		return comPlusLast;
	}

	public void setComPlusLast(String comPlusLast) {
		this.comPlusLast = comPlusLast;
	}

	public int getComNo() {
		return comNo;
	}

	public void setComNo(int comNo) {
		this.comNo = comNo;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getComRrn() {
		return comRrn;
	}

	public void setComRrn(String comRrn) {
		this.comRrn = comRrn;
	}

	public String getComAddress() {
		return comAddress;
	}

	public void setComAddress(String comAddress) {
		this.comAddress = comAddress;
	}

	public String getComTel() {
		return comTel;
	}

	public void setComTel(String comTel) {
		this.comTel = comTel;
	}

	public String getComRegdate() {
		return comRegdate;
	}

	public void setComRegdate(String comRegdate) {
		this.comRegdate = comRegdate;
	}

	public String getComPayInfo() {
		return comPayInfo;
	}

	public void setComPayInfo(String comPayInfo) {
		this.comPayInfo = comPayInfo;
	}

	public String getComInfo() {
		return comInfo;
	}

	public void setComInfo(String comInfo) {
		this.comInfo = comInfo;
	}

	public String getComCeoComment() {
		return comCeoComment;
	}

	public void setComCeoComment(String comCeoComment) {
		this.comCeoComment = comCeoComment;
	}

	public String getComHp() {
		return comHp;
	}

	public void setComHp(String comHp) {
		this.comHp = comHp;
	}

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
		return "SbCompany [comNo=" + comNo + ", comName=" + comName + ", comRrn=" + comRrn + ", comAddress="
				+ comAddress + ", comTel=" + comTel + ", comRegdate=" + comRegdate + ", comPayInfo=" + comPayInfo
				+ ", comInfo=" + comInfo + ", comCeoComment=" + comCeoComment + ", comHp=" + comHp + ", comCateNo="
				+ comCateNo + ", thumnail=" + thumnail + ", comPlus=" + comPlus + ", comPlusLast=" + comPlusLast
				+ ", comMainImg=" + comMainImg + ", comAs=" + comAs + ", comAsImg=" + comAsImg + ", comCeoName="
				+ comCeoName + ", comAddSangse=" + comAddSangse + ", comCateName=" + comCateName + ", sbComProductList="
				+ sbComProductList + ", mainImg=" + mainImg + ", thumnailImg=" + thumnailImg + "]";
	}	
	
}
