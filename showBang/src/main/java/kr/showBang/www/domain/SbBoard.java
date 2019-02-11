package kr.showBang.www.domain;

public class SbBoard {
	private int boardNo;
	private int userNo;
	private String boardTitle;
	private String boardBody;
	private String regDate;
	private int selCnt;
	private String boardLocal;
	private int boardType;
	private int secretCheck;
	private String secretCode;
	
	//상세보기용 작성자 정보
	private SbUser sbUser;
	
	//희망지역 직접입력시 사용할 변수
	private String boardLocalDirect;
	
	//작성자
	private int writeUserNo;
	
	
	public int getWriteUserNo() {
		return writeUserNo;
	}
	public void setWriteUserNo(int writeUserNo) {
		this.writeUserNo = writeUserNo;
	}
	public String getBoardLocalDirect() {
		return boardLocalDirect;
	}
	public void setBoardLocalDirect(String boardLocalDirect) {
		this.boardLocalDirect = boardLocalDirect;
	}
	public int getSecretCheck() {
		return secretCheck;
	}
	public void setSecretCheck(int secretCheck) {
		this.secretCheck = secretCheck;
	}
	public String getSecretCode() {
		return secretCode;
	}
	public void setSecretCode(String secretCode) {
		this.secretCode = secretCode;
	}
	public int getBoardType() {
		return boardType;
	}
	public void setBoardType(int boardType) {
		this.boardType = boardType;
	}
	public SbUser getSbUser() {
		return sbUser;
	}
	public void setSbUser(SbUser sbUser) {
		this.sbUser = sbUser;
	}
	public String getBoardLocal() {
		return boardLocal;
	}
	public void setBoardLocal(String boardLocal) {
		this.boardLocal = boardLocal;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardBody() {
		return boardBody;
	}
	public void setBoardBody(String boardBody) {
		this.boardBody = boardBody;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getSelCnt() {
		return selCnt;
	}
	public void setSelCnt(int selCnt) {
		this.selCnt = selCnt;
	}
	@Override
	public String toString() {
		return "SbBoard [boardNo=" + boardNo + ", userNo=" + userNo + ", boardTitle=" + boardTitle + ", boardBody="
				+ boardBody + ", regDate=" + regDate + ", selCnt=" + selCnt + ", boardLocal=" + boardLocal
				+ ", boardType=" + boardType + ", secretCheck=" + secretCheck + ", secretCode=" + secretCode
				+ ", sbUser=" + sbUser + ", boardLocalDirect=" + boardLocalDirect + ", writeUserNo=" + writeUserNo
				+ "]";
	}
	
}
