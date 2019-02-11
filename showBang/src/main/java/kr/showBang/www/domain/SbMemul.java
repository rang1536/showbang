package kr.showBang.www.domain;

import java.util.List;

public class SbMemul {
	private int mNo;
	private int userNo;
	private int localNo;
	private int mCate; //매물종류
	private int type; //매물타입(매,전,월)
	private String title;
	private String address;
	private String si;
	private String dong;
	private String sangse;
	private String gu;
	private String zipcode;
	private int area; //면적
	private int deposit; //보증금
	private int monthlyPrice; //월세
	private int charterPrice; //전세금
	private int tradePrice; //매매가
	private String searchKey;
	private String mainText;
	private int completeCheck;
	private String latitude; //위도
	private String hardness; //경도
	private String regDate;
	
	//주소관련 보조변수
	private String roadAdd;
	private String jibunAdd;
	private List<SbImg> imgList;
	private SbUser sbUser;
	
	//책임중개사 정보
	private List<SbUser> ansimInfo; 
	
	//빌라의 경우 옵션정보
	private List<SbOptionCheck> optList;
	
	
	public List<SbOptionCheck> getOptList() {
		return optList;
	}
	public void setOptList(List<SbOptionCheck> optList) {
		this.optList = optList;
	}
	public List<SbUser> getAnsimInfo() {
		return ansimInfo;
	}
	public void setAnsimInfo(List<SbUser> ansimInfo) {
		this.ansimInfo = ansimInfo;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public SbUser getSbUser() {
		return sbUser;
	}
	public void setSbUser(SbUser sbUser) {
		this.sbUser = sbUser;
	}
	public List<SbImg> getImgList() {
		return imgList;
	}
	public void setImgList(List<SbImg> imgList) {
		this.imgList = imgList;
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
	public int getLocalNo() {
		return localNo;
	}
	public void setLocalNo(int localNo) {
		this.localNo = localNo;
	}
	public int getmCate() {
		return mCate;
	}
	public void setmCate(int mCate) {
		this.mCate = mCate;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSi() {
		return si;
	}
	public void setSi(String si) {
		this.si = si;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getSangse() {
		return sangse;
	}
	public void setSangse(String sangse) {
		this.sangse = sangse;
	}
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public int getMonthlyPrice() {
		return monthlyPrice;
	}
	public void setMonthlyPrice(int monthlyPrice) {
		this.monthlyPrice = monthlyPrice;
	}
	public int getCharterPrice() {
		return charterPrice;
	}
	public void setCharterPrice(int charterPrice) {
		this.charterPrice = charterPrice;
	}
	public int getTradePrice() {
		return tradePrice;
	}
	public void setTradePrice(int tradePrice) {
		this.tradePrice = tradePrice;
	}
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getMainText() {
		return mainText;
	}
	public void setMainText(String mainText) {
		this.mainText = mainText;
	}
	public int getCompleteCheck() {
		return completeCheck;
	}
	public void setCompleteCheck(int completeCheck) {
		this.completeCheck = completeCheck;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getHardness() {
		return hardness;
	}
	public void setHardness(String hardness) {
		this.hardness = hardness;
	}
	public String getRoadAdd() {
		return roadAdd;
	}
	public void setRoadAdd(String roadAdd) {
		this.roadAdd = roadAdd;
	}
	public String getJibunAdd() {
		return jibunAdd;
	}
	public void setJibunAdd(String jibunAdd) {
		this.jibunAdd = jibunAdd;
	}
	@Override
	public String toString() {
		return "SbMemul [mNo=" + mNo + ", userNo=" + userNo + ", localNo=" + localNo + ", mCate=" + mCate + ", type="
				+ type + ", title=" + title + ", address=" + address + ", si=" + si + ", dong=" + dong + ", sangse="
				+ sangse + ", gu=" + gu + ", zipcode=" + zipcode + ", area=" + area + ", deposit=" + deposit
				+ ", monthlyPrice=" + monthlyPrice + ", charterPrice=" + charterPrice + ", tradePrice=" + tradePrice
				+ ", searchKey=" + searchKey + ", mainText=" + mainText + ", completeCheck=" + completeCheck
				+ ", latitude=" + latitude + ", hardness=" + hardness + ", regDate=" + regDate + ", roadAdd=" + roadAdd
				+ ", jibunAdd=" + jibunAdd + ", imgList=" + imgList + ", sbUser=" + sbUser + ", ansimInfo=" + ansimInfo
				+ ", optList=" + optList + "]";
	}
	
	
}
