package kr.showBang.www.domain;

public class SbInquire {
	private int inqNo;
	private String inqDate;
	private int customerNo;
	private int proNo;
	private String orderHp;
	private String inqText;
	
	//문의자, 상품정보
	private SbComProduct sbComProduct;
	private SbUser sbUser;
	
	
	public String getInqText() {
		return inqText;
	}
	public void setInqText(String inqText) {
		this.inqText = inqText;
	}
	public int getInqNo() {
		return inqNo;
	}
	public void setInqNo(int inqNo) {
		this.inqNo = inqNo;
	}
	public String getInqDate() {
		return inqDate;
	}
	public void setInqDate(String inqDate) {
		this.inqDate = inqDate;
	}
	public int getCustomerNo() {
		return customerNo;
	}
	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public String getOrderHp() {
		return orderHp;
	}
	public void setOrderHp(String orderHp) {
		this.orderHp = orderHp;
	}
	public SbComProduct getSbComProduct() {
		return sbComProduct;
	}
	public void setSbComProduct(SbComProduct sbComProduct) {
		this.sbComProduct = sbComProduct;
	}
	public SbUser getSbUser() {
		return sbUser;
	}
	public void setSbUser(SbUser sbUser) {
		this.sbUser = sbUser;
	}
	@Override
	public String toString() {
		return "SbInquire [inqNo=" + inqNo + ", inqDate=" + inqDate + ", customerNo=" + customerNo + ", proNo=" + proNo
				+ ", orderHp=" + orderHp + ", inqText=" + inqText + ", sbComProduct=" + sbComProduct + ", sbUser="
				+ sbUser + "]";
	}
	
}
