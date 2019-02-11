package kr.showBang.www.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.showBang.www.domain.SbAd;
import kr.showBang.www.domain.SbBoard;
import kr.showBang.www.domain.SbComCate;
import kr.showBang.www.domain.SbComProduct;
import kr.showBang.www.domain.SbCompany;
import kr.showBang.www.domain.SbDong;
import kr.showBang.www.domain.SbImg;
import kr.showBang.www.domain.SbInquire;
import kr.showBang.www.domain.SbJehu;
import kr.showBang.www.domain.SbMemul;
import kr.showBang.www.domain.SbOptionCheck;
import kr.showBang.www.domain.SbUser;
import kr.showBang.www.domain.SbWishMemul;
import kr.showBang.www.domain.SbWmoCate;
import kr.showBang.www.domain.SbWmoLocal;
import kr.showBang.www.domain.SbWmoType;

@Repository
public class ShowDao {
	@Autowired
	private SqlSessionTemplate sql;
	
	//회원가입
	public int signUp(SbUser sbUser) {
		return sql.insert("signUp", sbUser);
	}
	
	//회원정보조회
	public SbUser getUser(int userNo) {
		return sql.selectOne("getUserInfo", userNo);
	}
	
	//로그인
	public List<SbUser> logIn(String userName){
		return sql.selectList("logIn", userName);
	}
	
	//매물등록1
	public int addMemul(SbMemul sbMemul) {
		return sql.insert("addMemul", sbMemul);
	}
	
	//매물등록 - 옵션등록
	public int addOption(SbOptionCheck sbOptionCheck) {
		return sql.insert("addOption", sbOptionCheck);
	}
	
	//매물등록 - 이미지등록
	public int addMImg(SbImg sbImg) {
		return sql.insert("addMImg", sbImg);
	}
	
	//동 조회
	public List<SbDong> getDong(int localNo){
		return sql.selectList("getDong", localNo);
	}
	
	//동 별 안심중개사 조회하기
	public List<SbUser> getAnsimByDong(String dong){
		return sql.selectList("getAnsimByDong", dong);
	}
	
	//매물 조회하기
	public List<SbMemul> setMemulList(Map<String, Object> param){
		return sql.selectList("setMemulList", param);
	}
	
	//매물 조회하기(상세)
	public SbMemul getMemulDetail(int mNo) {
		return sql.selectOne("getMemulDetail",mNo);
	}
	
	//안심중개사 조회
	public List<SbUser> getAnsimUser(String userSearchAdd) {
		return sql.selectList("getAnsimUser", userSearchAdd);
	}
	
	//매물검색
	public List<SbMemul> searchMemul(Map<String, Object> map){
		return sql.selectList("searchMemul", map);
	}
	
	//빌라일경우 옵션조회
	public List<SbOptionCheck> getOptionInfo(int mNo){
		return sql.selectList("getOptionInfo", mNo);
	}
	
	//매물 이미지 조회하기
	public List<SbImg> setMemulImgList(int mNo){
		return sql.selectList("setMemulImgList", mNo);
	}
	
	//매물조회(복합단지)
	public List<SbMemul> getCaMemulList(String caLocal){
		return sql.selectList("getCaMemulList",caLocal);
	}
	
	//제휴업체조회(복합단지)
	public List<SbJehu> getCaJehuList(String caLocal){
		return sql.selectList("getCaJehuList",caLocal);
	}
	
	//희망매물등록
	public int addWm(SbWishMemul sbWishMemul) {
		return sql.insert("addWm", sbWishMemul);
	}
	
	//희망매물 - 옵션등록
	public int addWmLocal(SbWmoLocal sbWmoLocal) {
		return sql.insert("addWmLocal", sbWmoLocal);
	}
	
	public int addWmCate(SbWmoCate sbWmoCate) {
		return sql.insert("addWmCate", sbWmoCate);
	}
	
	public int addWmType(SbWmoType sbWmoType) {
		return sql.insert("addWmType", sbWmoType);
	}
	
	//복합주거 - 게시글목록조회
	public List<SbBoard> getCaBoardList(int type){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardType", type);
		return sql.selectList("getCaBoardList", map);
	}
	
	//게시글등록
	public int addCommunity(SbBoard sbBoard) {
		return sql.insert("addCommunity", sbBoard);
	}
	
	//게시글상세조회
	public SbBoard boardDetail(int boardNo) {
		return sql.selectOne("boardDetail", boardNo);
	}
	
	//게시글 조회수 카운트
	public int boardSelCntPlus(SbBoard sbBoard) {
		return sql.update("boardSelCntPlus", sbBoard);
	}

	//======================================================================================================
	
	//업종조회
	public List<SbComCate> setMainMenuBtn() {
		return sql.selectList("setMainMenuBtn");
	}
	
	//업체조회
	public List<SbCompany> setCompanyList(int comCateNo){
		return sql.selectList("setCompanyList", comCateNo);
	}
	
	//업체상세조회
	public SbCompany getComDetail(int comNo) {
		return sql.selectOne("getComDetail",comNo);
	}
	
	//업종명 조회
	public String getComCateName(int comCateNo) {
		return sql.selectOne("getComCateName",comCateNo);
	}
	
	//업체상품 조회
	public List<SbComProduct> getComProduct(int comNo) {
		return sql.selectList("getComProduct",comNo);
	}
	
	//상품조회
	public SbComProduct getProductDetail(int proNo) {
		return sql.selectOne("getProductDetail",proNo);
	}
	
	//상품 이미지 목록조회
	public List<SbImg> getProductImg(int proNo){
		return sql.selectList("getProductImg", proNo);
	}
	
	//견적문의
	public int addInquire(SbInquire sbInquire) {
		return sql.insert("addInquire", sbInquire);
	}
	
	//업체등록문의
	public int addAdOrder(SbAd sbAd) {
		return sql.insert("addAdOrder", sbAd);
	}
	
//================================================================================================================================================================
	//웹 - 업체등록
	public int addCompany(SbCompany sbCompany) {
		return sql.insert("addCompany", sbCompany);
	}
	
//================================================================================================================================================================
	
	//부동산 글조회
	public List<SbBoard> getMemulBoradList(int startNum){
		return sql.selectList("getMemulBoradList",startNum);
	}
	
	//부동산 글 등록
	public int addMemulBoard(SbBoard sbBoard) {
		return sql.insert("addMemulBoard", sbBoard);
	}
	
//================================================================================================================================================================
	
	//커뮤니티 공개글 조회 
	public List<SbBoard> getCommunityBoradList(int startNum){
		return sql.selectList("getCommunityBoradList",startNum);
	}
}
