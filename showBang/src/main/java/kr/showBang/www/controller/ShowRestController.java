package kr.showBang.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.showBang.www.domain.SbAd;
import kr.showBang.www.domain.SbBoard;
import kr.showBang.www.domain.SbComCate;
import kr.showBang.www.domain.SbComProduct;
import kr.showBang.www.domain.SbCompany;
import kr.showBang.www.domain.SbDong;
import kr.showBang.www.domain.SbInquire;
import kr.showBang.www.domain.SbJehu;
import kr.showBang.www.domain.SbMemul;
import kr.showBang.www.domain.SbUser;
import kr.showBang.www.domain.SbWishMemul;
import kr.showBang.www.service.ShowService;

@CrossOrigin(origins="*")
@RestController
public class ShowRestController {
	@Autowired
	private ShowService showServ;
	
	//회원가입
	@RequestMapping(value="/signUp", method= {RequestMethod.POST, RequestMethod.GET})
	public Map<String, Object> signUpCtrl(SbUser sbUser){
		//System.out.println("SbUser : "+sbUser);
		Map<String, Object> map = showServ.signUpServ(sbUser);	
		return map;
	}
	
	//회원정보조회
	@RequestMapping(value="/getUser", method= {RequestMethod.POST, RequestMethod.GET})
	public SbUser getUserCtrl(@RequestParam(value="userNo")int userNo){
		//System.out.println("userNo 확인 : "+userNo);			
		return showServ.getUserServ(userNo);
	}
	
	//회원정보조회
	@RequestMapping(value="/logIn", method= {RequestMethod.POST, RequestMethod.GET})
	public Map<String, Object> logInCtrl(@RequestParam(value="loginId")String userName,
			@RequestParam(value="loginPw")String userHp){
		//System.out.println("userName 확인 : "+userName);	
		//System.out.println("userHp 확인 : "+userHp);	
		
		return showServ.loginServ(userName, userHp);
	}
	
	//매물등록
	@RequestMapping(value="/addMemul", method= {RequestMethod.POST, RequestMethod.GET})
	public Map<String, Object> addMemulCtrl(MultipartHttpServletRequest request){
		//System.out.println("값 확인 : "+request.getParameter("type"));	
		//System.out.println("값 확인 : "+request.getParameter("img1"));
		//System.out.println("값 확인 : "+request.getParameter("img2"));	
		
		return showServ.addMemulServ(request);
	}
	
	//동 조회하기
	@RequestMapping(value="/getDong", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbDong> getDongCtrl(@RequestParam(value="localNo")int localNo){
		//System.out.println("local값 확인 : "+localNo);	
		
		return showServ.getDongServ(localNo);
	}
	
	//동별 안심중개사 조회하기
	@RequestMapping(value="/getAnsimByDong", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbUser> getAnsimByDongCtrl(@RequestParam(value="dong")String dong){
		//System.out.println("dong값 확인 : "+dong);	
		
		return showServ.getAnsimByDongServ(dong);
	}
	
	//동별 안심중개사 조회하기
	@RequestMapping(value="/setMemulList", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbMemul> setMemulListCtrl(@RequestParam(value="saveType")int saveType,
			@RequestParam(value="saveLocal")int saveLocal,
			@RequestParam(value="saveCate", defaultValue="1")int saveCate,
			@RequestParam(value="saveDong", defaultValue="동없음")String saveDong){
		//System.out.println("type, local값 확인 : "+saveType+", "+saveLocal+", "+saveCate+", "+saveDong);	
		
		return showServ.setMemulListServ(saveType, saveLocal, saveCate, saveDong);
	}
	
	//매물 상세보기 
	@RequestMapping(value="/getMemulDetail", method= {RequestMethod.POST, RequestMethod.GET})
	public SbMemul getMemulDetailCtrl(@RequestParam(value="mNo")int mNo){
		//System.out.println("dong값 확인 : "+dong);	
		
		return showServ.getMemulDetailServ(mNo);
	}
	
	//매물 조회 
	@RequestMapping(value="/searchMemul", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbMemul> searchMemulCtrl(@RequestParam(value="searchValue")String searchValue){
		System.out.println("searchValue값 확인 : "+searchValue);	
		
		return showServ.searchMemulServ(searchValue);
	}
	
	//매물 목록조회(복합단지) 
	@RequestMapping(value="/getCaMemulList", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbMemul> getCaMemulListCtrl(@RequestParam(value="caLocal")String caLocal){
		//System.out.println("caLocal값 확인 : "+caLocal);	
		
		return showServ.getCaMemulListServ(caLocal);
	}
	
	//제휴업체 목록조회(복합단지) 
	@RequestMapping(value="/getCaJehuList", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbJehu> getCaJehuListCtrl(@RequestParam(value="caLocal")String caLocal){
		//System.out.println("caLocal값 확인 : "+caLocal);	
		
		return showServ.getCaJehuListServ(caLocal);
	}
	
	//희망매물등록
	@RequestMapping(value="/addWm", method= {RequestMethod.POST, RequestMethod.GET})
	public Map<String, Object> addWmCtrl(SbWishMemul sbWishMemul){
		//System.out.println("caLocal값 확인 : "+sbWishMemul);	
		
		return showServ.addWmServ(sbWishMemul);
	}
	
	//게시글조회
	@RequestMapping(value="/getCaBoardList", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbBoard> getCaBoardListCtrl(@RequestParam(value="type",defaultValue="")int type){
		//System.out.println("boardLocal값 확인 : "+boardLocal);	
		
		return showServ.getCaBoardListServ(type);
	}
	
	//게시글등록
	@RequestMapping(value="/addCommunity", method= {RequestMethod.POST, RequestMethod.GET})
	public Map<String, Object> addCommunityCtrl(SbBoard sbBoard){
		System.out.println("sbBoard값 확인 : "+sbBoard);	
		
		return showServ.addCommunityServ(sbBoard);
	}
	
	//게시글 상세보기
	@RequestMapping(value="/boardDetail", method= {RequestMethod.POST, RequestMethod.GET})
	public SbBoard boardDetailCtrl(@RequestParam(value="boardNo")int boardNo){
		System.out.println("boardNo값 확인 : "+boardNo);	
		
		return showServ.boardDetailServ(boardNo);
	}

//=============================================================================================================================================
	
	//업종조회
	@RequestMapping(value="/setMainMenuBtn", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbComCate> setMainMenuBtnCtrl(){
		return showServ.setMainMenuBtnServ();
	}
	
	//업체목록조회 - 업종별 setCompanyList
	@RequestMapping(value="/setCompanyList", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbCompany> setCompanyListCtrl(@RequestParam(value="comCateNo")int comCateNo){
		//System.out.println(comCateNo);
		return showServ.setCompanyListServ(comCateNo);
	}
	
	//업체상세정보조회 
	@RequestMapping(value="/getComDetail", method= {RequestMethod.POST, RequestMethod.GET})
	public SbCompany getComDetailCtrl(@RequestParam(value="comNo")int comNo){
		//System.out.println(comNo);
		return showServ.getComDetailServ(comNo);
	}
	
	//상품상세정보(이미지 포함) 
	@RequestMapping(value="/getProductDetail", method= {RequestMethod.POST, RequestMethod.GET})
	public SbComProduct getProductDetailCtrl(@RequestParam(value="proNo")int proNo){
		//System.out.println(proNo);
		return showServ.getProductDetailServ(proNo);
	}
	
	//상품문자문의 addInquire
	@RequestMapping(value="/addInquire", method= {RequestMethod.POST, RequestMethod.GET})
	public Map<String, Object> addInquireCtrl(SbInquire sbInquire){
		//System.out.println(sbInquire);
		return showServ.addInquireServ(sbInquire);
	}
	
	//광고신청 
	@RequestMapping(value="/adOrderSms", method= {RequestMethod.POST, RequestMethod.GET})
	public Map<String, Object> adOrderSmsCtrl(SbAd sbAd){
		System.out.println(sbAd);
		return showServ.addAdOrderServ(sbAd);
	}
	
//===========================================================================================================================================================
	
	//부동산 글 조회 
	@RequestMapping(value="/getMemulBoradList", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbBoard> getMemulBoradListCtrl(@RequestParam(value="curPage",defaultValue="0")int curPage){
		//System.out.println("boardLocal값 확인 : "+boardLocal);	
		
		return showServ.getMemulBoradListServ(curPage);
	}
	
	//부동산 글 등록 
	@RequestMapping(value="/addMemulBoard", method= {RequestMethod.POST, RequestMethod.GET})
	public Map<String, Object> addMemulBoardCtrl(SbBoard sbBoard){
		//System.out.println("boardLocal값 확인 : "+boardLocal);	
		
		return showServ.addMemulBoardServ(sbBoard);
	}
	
//============================================================================================================================================================
	
	//커뮤니티 글 조회
	@RequestMapping(value="/getCommunityBoradList", method= {RequestMethod.POST, RequestMethod.GET})
	public List<SbBoard> getCommunityBoradListCtrl(@RequestParam(value="curPage",defaultValue="0")int curPage){
		//System.out.println("boardLocal값 확인 : "+boardLocal);	
		
		return showServ.getCommunityBoradListServ(curPage);
	}
}
