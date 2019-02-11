package kr.showBang.www.domain;

public class Hsberry {
	private int no;
	private String name;
	private String hp;
	private String email;
	private String address;
	private String option;
	private String comment;
	private String orderDate;
	private String completeCheck;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getCompleteCheck() {
		return completeCheck;
	}
	public void setCompleteCheck(String completeCheck) {
		this.completeCheck = completeCheck;
	}
	@Override
	public String toString() {
		return "Hsberry [no=" + no + ", name=" + name + ", hp=" + hp + ", email=" + email + ", address=" + address
				+ ", option=" + option + ", comment=" + comment + ", orderDate=" + orderDate + ", completeCheck="
				+ completeCheck + "]";
	}
	
	
}
