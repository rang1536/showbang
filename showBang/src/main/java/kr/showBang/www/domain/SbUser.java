package kr.showBang.www.domain;

public class SbUser {
	private int userNo;
	private int userType;
	private String userName;
	private String userShopName;
	private String userAddress;
	private String userHp;
	private String userIntro;
	private String userRegDate;
	private int userLastest;
	private String userToken;
	private String pushCheck;
	private String myLocal;
	private String userSearchAdd;
	
	//추가된 변수
	private String userSangseAddress;
	private String checkLocal;
	private String checkUserType;
	private String autoLogin;
	
	
	public String getUserSearchAdd() {
		return userSearchAdd;
	}
	public void setUserSearchAdd(String userSearchAdd) {
		this.userSearchAdd = userSearchAdd;
	}
	public String getMyLocal() {
		return myLocal;
	}
	public void setMyLocal(String myLocal) {
		this.myLocal = myLocal;
	}
	public String getAutoLogin() {
		return autoLogin;
	}
	public void setAutoLogin(String autoLogin) {
		this.autoLogin = autoLogin;
	}
	public String getPushCheck() {
		return pushCheck;
	}
	public void setPushCheck(String pushCheck) {
		this.pushCheck = pushCheck;
	}
	public String getUserSangseAddress() {
		return userSangseAddress;
	}
	public void setUserSangseAddress(String userSangseAddress) {
		this.userSangseAddress = userSangseAddress;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserShopName() {
		return userShopName;
	}
	public void setUserShopName(String userShopName) {
		this.userShopName = userShopName;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserHp() {
		return userHp;
	}
	public void setUserHp(String userHp) {
		this.userHp = userHp;
	}
	public String getUserIntro() {
		return userIntro;
	}
	public void setUserIntro(String userIntro) {
		this.userIntro = userIntro;
	}
	public String getUserRegDate() {
		return userRegDate;
	}
	public void setUserRegDate(String userRegDate) {
		this.userRegDate = userRegDate;
	}
	public int getUserLastest() {
		return userLastest;
	}
	public void setUserLastest(int userLastest) {
		this.userLastest = userLastest;
	}
	public String getUserToken() {
		return userToken;
	}
	public void setUserToken(String userToken) {
		this.userToken = userToken;
	}
	public String getCheckLocal() {
		return checkLocal;
	}
	public void setCheckLocal(String checkLocal) {
		this.checkLocal = checkLocal;
	}
	public String getCheckUserType() {
		return checkUserType;
	}
	public void setCheckUserType(String checkUserType) {
		this.checkUserType = checkUserType;
	}
	@Override
	public String toString() {
		return "SbUser [userNo=" + userNo + ", userType=" + userType + ", userName=" + userName + ", userShopName="
				+ userShopName + ", userAddress=" + userAddress + ", userHp=" + userHp + ", userIntro=" + userIntro
				+ ", userRegDate=" + userRegDate + ", userLastest=" + userLastest + ", userToken=" + userToken
				+ ", pushCheck=" + pushCheck + ", myLocal=" + myLocal + ", userSearchAdd=" + userSearchAdd
				+ ", userSangseAddress=" + userSangseAddress + ", checkLocal=" + checkLocal + ", checkUserType="
				+ checkUserType + ", autoLogin=" + autoLogin + "]";
	}
	
	
}
