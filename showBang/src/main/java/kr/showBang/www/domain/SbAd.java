package kr.showBang.www.domain;

public class SbAd {
	private int adNo;
	private int adType;
	private String callbackHp;
	private String adRegDate;
	
	//책임중개사
	private String brokerName;
	private String brokerHp;
	
	
	public String getBrokerName() {
		return brokerName;
	}
	public void setBrokerName(String brokerName) {
		this.brokerName = brokerName;
	}
	public String getBrokerHp() {
		return brokerHp;
	}
	public void setBrokerHp(String brokerHp) {
		this.brokerHp = brokerHp;
	}
	public int getAdNo() {
		return adNo;
	}
	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}
	public int getAdType() {
		return adType;
	}
	public void setAdType(int adType) {
		this.adType = adType;
	}
	public String getCallbackHp() {
		return callbackHp;
	}
	public void setCallbackHp(String callbackHp) {
		this.callbackHp = callbackHp;
	}
	public String getAdRegDate() {
		return adRegDate;
	}
	public void setAdRegDate(String adRegDate) {
		this.adRegDate = adRegDate;
	}
	@Override
	public String toString() {
		return "SbAd [adNo=" + adNo + ", adType=" + adType + ", callbackHp=" + callbackHp + ", adRegDate=" + adRegDate
				+ ", brokerName=" + brokerName + ", brokerHp=" + brokerHp + "]";
	}
	
}
