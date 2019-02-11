package kr.showBang.www.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;

import kr.showBang.www.dao.ShowDao;
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
import kr.showBang.www.util.UtilFile;
import kr.showBang.www.util.UtilSms;

@Service
public class ShowService {
	@Autowired
	private ShowDao showDao;
	
	//회원가입
	public Map<String, Object> signUpServ(SbUser sbUser){
		//관심지역 설정
		String[] myLocal = sbUser.getCheckLocal().split(",");
		//System.out.println("관심지역확인1 : "+myLocal[0]);
		for(int i=0; i<myLocal.length; i++) {
			if(i == 0) {
				if(myLocal[i].equals("2")) {
					if(sbUser.getMyLocal() == null) sbUser.setMyLocal("");
					sbUser.setMyLocal(sbUser.getMyLocal()+"전주");
				}
			}else if(i == 1) {
				if(myLocal[i].equals("2")) {
					if(sbUser.getMyLocal() == null) sbUser.setMyLocal("");
					sbUser.setMyLocal(sbUser.getMyLocal()+"익산");
				}
			}else if(i == 2) {
				if(myLocal[i].equals("2")) {
					if(sbUser.getMyLocal() == null) sbUser.setMyLocal("");
					sbUser.setMyLocal(sbUser.getMyLocal()+"군산");
				}
			}  
		}
		//System.out.println("관심지역확인 : "+sbUser.getMyLocal());
		
		//유저타입 설정
		String[] myType = sbUser.getCheckUserType().split(",");
		for(int i=0; i<myType.length; i++) {
			if(i == 0) {
				if(myType[i].equals("2")) {
					sbUser.setUserType(2); //일반중개사
				}
			}else if(i == 1) {
				if(myType[i].equals("2")) {
					sbUser.setUserType(3); //집주인
				}
			}else if(i == 2) {
				if(myType[i].equals("2")) {
					sbUser.setUserType(4); //일반사용자
				}
			}  
		}
		
		//주소
		if(sbUser.getUserType() == 2) {
			sbUser.setUserAddress(sbUser.getUserAddress()+" "+sbUser.getUserSangseAddress());
		}
		
		if(sbUser.getUserSearchAdd() != null) {
			sbUser.setUserSearchAdd(sbUser.getUserSearchAdd().replaceAll(" ", ""));
		}
		//System.out.println("sbUser확인 : "+sbUser);
		
		int result = showDao.signUp(sbUser);
		Map<String, Object> map = new HashMap<String, Object>();
		if(result == 1) {
			map.put("result", "succ");
			map.put("autoLogin", sbUser.getAutoLogin());
			map.put("userNo", sbUser.getUserNo());
		}else {
			map.put("result", "fail");
		}
		
		return map;
	}
	
	//회원정보조회
	public SbUser getUserServ(int userNo) {
		return showDao.getUser(userNo);
	}
	
	//로그인
	public Map<String, Object> loginServ(String userName, String userHp){
		List<SbUser> list = showDao.logIn(userName);
		
		Map<String, Object> map = new HashMap<String, Object>();
		int position = 100;
		if(list.size() != 0 && list.size() >= 1) {
			for(int i=0; i<list.size(); i++) {
				if(userHp.equals(list.get(i).getUserHp())){
					position = i;
				};
			}
			if(position == 100) { //휴대폰번호 일치자가 없는경우
				position = 102;
			}
		}else if(list.size() == 0) { //해당 Id로 조회된 목록이 없는경우
			map.put("result", "noId");
			position = 101;
		}
		
		if(position == 102) { //비번불일치
			map.put("result", "noHp");
		}else if(position != 101 && position != 102) { //로그인된 경우 해당 차수번의 목록의 유저PK를 저장후 리턴
			map.put("result", "logIn");
			map.put("loginUserNo", list.get(position).getUserNo());
		}
		return map;
	}
	
	//매물등록
	public Map<String, Object> addMemulServ(MultipartHttpServletRequest req){
		Map<String, Object> inpRes = new HashMap<String, Object>();
		String type = "";
		//원투쓰리포룸 확인
		if(Integer.parseInt(req.getParameter("mCate")) == 2) {
			if(Integer.parseInt(req.getParameter("type")) == 2 || Integer.parseInt(req.getParameter("type")) == 3) {
				String[] optList = req.getParameterValues("optionNo");
				for(int i=0; i<4; i++) {
					if(Integer.parseInt(optList[i]) == 2) {
						if(i == 0) {
							type = "원룸";
						}else if(i == 1) {
							type = "투룸";
						}else if(i == 2) {
							type = "쓰리룸";
						}else if(i == 3) {
							type = "포룸";
						}
					}
				}
				type += "월세전세임대";
			}
		}
		
		String mCate = "";
		if(Integer.parseInt(req.getParameter("mCate")) == 1) {
			mCate = "아파트";
		}else if(Integer.parseInt(req.getParameter("mCate")) == 2) {
			mCate = "빌라";			
			mCate += type;
		}else if(Integer.parseInt(req.getParameter("mCate")) == 3) {
			mCate = "상가";
		}else if(Integer.parseInt(req.getParameter("mCate")) == 4) {
			mCate = "주택";
		}else if(Integer.parseInt(req.getParameter("mCate")) == 5) {
			mCate = "토지공장";
		}else if(Integer.parseInt(req.getParameter("mCate")) == 6) {
			mCate = "신규분양";
		}else if(Integer.parseInt(req.getParameter("mCate")) == 7) {
			mCate = "분양권매매";
		}
		
		if(Integer.parseInt(req.getParameter("type")) == 1) {
			mCate += "매매";
		}else if(Integer.parseInt(req.getParameter("type")) == 2) {
			mCate += "전세";
		}else if(Integer.parseInt(req.getParameter("type")) == 3) {
			mCate += "월세";
			mCate += "임대";
		}
		
		SbMemul sbMemul = new SbMemul();
		/*등록자*/
		sbMemul.setUserNo(Integer.parseInt(req.getParameter("userNo"))); 
		/*주소정보*/
		sbMemul.setAddress(req.getParameter("address"));
		sbMemul.setRoadAdd(req.getParameter("roadAdd"));
		sbMemul.setJibunAdd(req.getParameter("jibunAdd"));
		sbMemul.setSi(req.getParameter("si"));
		sbMemul.setDong(req.getParameter("dong"));
		sbMemul.setZipcode(req.getParameter("zipcode"));
		if(req.getParameter("sangse") != null && req.getParameter("sangse") != "") {
			sbMemul.setSangse(req.getParameter("sangse"));
		}
		
		if(req.getParameter("si").contains("전주")) {
			sbMemul.setLocalNo(1);
		}else if(req.getParameter("si").contains("익산")) {
			sbMemul.setLocalNo(2);
		}else if(req.getParameter("si").contains("군산")) {
			sbMemul.setLocalNo(3);
		}else {
			sbMemul.setLocalNo(100);//전북 - 전주익산군산 제외지역
		}
		
		//평형계산
		String py = "";
		if(req.getParameter("area") != null && !req.getParameter("area").equals("")) {
			float a = (float) (Integer.parseInt(req.getParameter("area"))* 0.3025);
			int b = (int) a;
			String checkPy = String.valueOf(b).substring(0, 1);
			if(checkPy.equals("1")) {
				py = "십평대십평형";
			}else if(checkPy.equals("2")) {
				py = "이십평대이십평형";
			}else if(checkPy.equals("3")) {
				py = "삼십평대삼십평형";
			}else if(checkPy.equals("4")) {
				py = "사십평대사십평형";
			}else if(checkPy.equals("5")) {
				py = "오십평대오십평형";
			}else if(checkPy.equals("6")) {
				py = "육십평대육십평형";
			}else if(checkPy.equals("7")) {
				py = "칠십평대칠십평형";
			}
		}
		
		
		//주소로 위경도 구해서 넣기
		System.out.println("지번주소 확인 : "+req.getParameter("jibunAdd"));
		HashMap latLng = new HashMap();
		try {
			if(req.getParameter("jibunAdd") != null && !req.getParameter("jibunAdd").equals("")) {
				latLng = getLatLon(req.getParameter("jibunAdd"));
				if(latLng != null) {
					sbMemul.setLatitude(latLng.get("lat").toString());
					sbMemul.setHardness(latLng.get("lng").toString());	
				}
			}		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
		
		/*매물정보*/
		sbMemul.setmCate(Integer.parseInt(req.getParameter("mCate")));
		sbMemul.setType(Integer.parseInt(req.getParameter("type")));
		sbMemul.setArea(Integer.parseInt(req.getParameter("area")));
		sbMemul.setTitle(req.getParameter("title"));
		sbMemul.setMainText(req.getParameter("mainText"));
		sbMemul.setCompleteCheck(1); //거래완료여부 - 1:거래중, 2:완료
		
		if(Integer.parseInt(req.getParameter("type")) == 1) { //매매
			sbMemul.setTradePrice(Integer.parseInt(req.getParameter("tradePrice")));
		}else if(Integer.parseInt(req.getParameter("type")) == 2) { //전세
			sbMemul.setCharterPrice(Integer.parseInt(req.getParameter("charterPrice")));
		}else if(Integer.parseInt(req.getParameter("type")) == 3) { //월세
			sbMemul.setMonthlyPrice(Integer.parseInt(req.getParameter("monthlyPrice")));
			sbMemul.setDeposit(Integer.parseInt(req.getParameter("deposit")));
		}
		
		//월세등 관련해서는 추후 다시 세팅하는걸로
		System.out.println("매물등록전 검색값확인 : "+mCate+", "+py+", "+type);
		sbMemul.setSearchKey((req.getParameter("address")+req.getParameter("roadAdd")+req.getParameter("jibunAdd")+req.getParameter("sangse")+py+mCate+type).replaceAll(" ", ""));
		
		//데이터 입력
		System.out.println("입력 전 매물정보 확인 : "+sbMemul);
		int result = showDao.addMemul(sbMemul);
		
		if(result == 1) {
			inpRes.put("result", "succ");
			//빌라 임대의 경우 옵션입력(매물번호가 필요하므로 먼저 매물정보 인서트후 실행)
			SbOptionCheck sbOptionCheck = null;
			if(Integer.parseInt(req.getParameter("mCate")) == 2) {
				if(Integer.parseInt(req.getParameter("type")) == 2 || Integer.parseInt(req.getParameter("type")) == 3) {
					String[] optList = req.getParameterValues("optionNo");
					for(int i=0; i<optList.length; i++) {
						//각 옵션값 sb_optionCheck 테이블에 인서트
						if(Integer.parseInt(optList[i]) == 2) {
							sbOptionCheck = new SbOptionCheck();
							sbOptionCheck.setOptionNo(i+1);
							sbOptionCheck.setmNo(sbMemul.getmNo());
							
							showDao.addOption(sbOptionCheck);
							System.out.println((i+1)+"번째 옵션등록 성공");
						}
					}
				}
			}			
			//데이터 입력 후 이미지 업로드
			for(int i=1; i<13; i++) {
				String check = "img"+i;
				//System.out.println(check+"는");
				//System.out.println(req.getParameter("img2"));
				//System.out.println(req.getParameter(check));
				if(req.getParameter(check).equals("ok")) {
					//System.out.println(i+"번째 이미지 올림");	
					UtilFile utilFile = new UtilFile();
					String file = "mImg"+i;
					SbImg sbImg = utilFile.singleUploadFile(req.getFile(file),"");
					sbImg.setmNo(sbMemul.getmNo());
					sbImg.setUserNo(Integer.parseInt(req.getParameter("userNo")));
					//System.out.println("이미지등록정보 확인 : "+sbImg);
					
					int imgUpRes = showDao.addMImg(sbImg);
					//System.out.println(i+" 번째 이미지DB업로드 완료");
				}else {
					//System.out.println("이미지 없음");
				}
			}
		}		
		
		return inpRes;
	}
	
	//동 조회하기
	public List<SbDong> getDongServ(int localNo){
		return showDao.getDong(localNo);
	}
	
	//동 별 안심중개사 조회
	public List<SbUser> getAnsimByDongServ(String dong){
		return showDao.getAnsimByDong(dong);
	}
	
	//매물목록 조회
	public List<SbMemul> setMemulListServ(int saveType, int saveLocal, int saveCate, String saveDong){
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("saveType", saveType);
		param.put("saveLocal", saveLocal);
		param.put("saveCate", saveCate);
		param.put("saveDong", saveDong);
		
		List<SbMemul> memulList = showDao.setMemulList(param);
		
		//이미지 조회
		for(int i=0; i<memulList.size(); i++) {
			memulList.get(i).setImgList(showDao.setMemulImgList(memulList.get(i).getmNo()));		
		}
		
		return memulList;
	}
	
	//매물상세조회
	public SbMemul getMemulDetailServ(int mNo) {
		SbMemul sbMemul = showDao.getMemulDetail(mNo);
		sbMemul.setSbUser(showDao.getUser(sbMemul.getUserNo())); //등록자 정보세팅
		if(sbMemul.getSbUser().getUserType() > 2) { //일반매물의 경우 안심중개사 정보세팅
			sbMemul.setAnsimInfo(showDao.getAnsimUser(sbMemul.getDong()));
		}
		sbMemul.setImgList(showDao.setMemulImgList(mNo)); //이미지 세팅
		
		if(sbMemul.getmCate() == 2) {
			if(sbMemul.getType() == 2 || sbMemul.getType() == 3) {
				sbMemul.setOptList(showDao.getOptionInfo(sbMemul.getmNo()));
				System.out.println("옵션확인 : "+sbMemul.getOptList());
			}
		}
		return sbMemul;
	}
	
	//매물검색
	public List<SbMemul> searchMemulServ(String searchValue){
		String sv = "%";
		for(int i=0;i<searchValue.length();i++) {
			if(i < searchValue.length()-1) {
				sv = sv + searchValue.substring(i, i+1)+ "%";
			}else if(i == searchValue.length()-1) {
				sv += searchValue.substring(i, i+1);
			}
		}
		//System.out.println("와일드카드 확인 : "+sv);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchValue", sv);
		List<SbMemul> list = showDao.searchMemul(map);
		
		/*if(searchValue.length() > 4) map.put("sv1", searchValue.substring(0, 3));
		if(searchValue.length() > 7) {
			map.put("sv2", searchValue.substring(4, searchValue.length()));
			map.put("sv3", searchValue.substring(searchValue.indexOf("동")+1, searchValue.length()));
		}
		for(int i=0; i<list.size(); i++) {
			System.out.println(i+" 번째 검색 목록 확인 : "+list.get(i).getmNo());
		}	*/
		
		return list;
	}
	
	//매물조회 (복합단지)
	public List<SbMemul> getCaMemulListServ(String caLocal){
		return showDao.getCaMemulList(caLocal);
	}
	
	//제휴업체조회 (복합단지)
	public List<SbJehu> getCaJehuListServ(String caLocal){
		return showDao.getCaJehuList(caLocal);
	}
	
	//희망매물등록
	public Map<String, Object> addWmServ(SbWishMemul sbWishMemul){
		Map<String, Object> map = new HashMap<String, Object>();
		String[] local = sbWishMemul.getWmLocal().split(",");
		String[] cate = sbWishMemul.getWmCate().split(",");
		String[] type = sbWishMemul.getWmType().split(",");
		
		int result = showDao.addWm(sbWishMemul);
		int succCnt = 0;
		
		SbWmoLocal sbWmoLocal = null;
		SbWmoCate sbWmoCate = null;
		SbWmoType sbWmoType = null;
		if(result == 1) {
			for(int i=0; i<local.length; i++) {
				int res = 0;
				sbWmoLocal = new SbWmoLocal();
				sbWmoLocal.setWmNo(sbWishMemul.getWmNo());
				sbWmoLocal.setWmLocal(local[i]);
				
				res = showDao.addWmLocal(sbWmoLocal);
				if(res == 1) succCnt++;
			}
			
			for(int i=0; i<cate.length; i++) {
				int res2 = 0;
				sbWmoCate = new SbWmoCate();
				sbWmoCate.setWmNo(sbWishMemul.getWmNo());
				sbWmoCate.setWmCate(cate[i]);
				
				res2 = showDao.addWmCate(sbWmoCate);
				if(res2 == 1) succCnt++;
			}
			
			for(int i=0; i<type.length; i++) {
				int res3 = 0;
				sbWmoType = new SbWmoType();
				sbWmoType.setWmNo(sbWishMemul.getWmNo());
				sbWmoType.setWmType(type[i]);
				
				res3 = showDao.addWmType(sbWmoType);
				if(res3 == 1) succCnt++;
			}
			
			if(succCnt >= 3) {
				map.put("result", "succ");
			}
		}else {
			map.put("result", "fail");
		}
		
		return map;
	}
	
	//복합주거 - 게시글조회
	public List<SbBoard> getCaBoardListServ(int type){
		return showDao.getCaBoardList(type);
	}
	
	//게시글등록
	public Map<String, Object> addCommunityServ(SbBoard sbBoard){
		Map<String, Object> map = new HashMap<String, Object>();
		int result = showDao.addCommunity(sbBoard);
		
		if(result == 1) map.put("result", "succ");
		else map.put("result", "fail");
		return map;
	}
	
	//주소로 위경도 구하기
	public String[] geoCoding(String location) {
		System.out.println("주소확인 : "+location);
		if (location == null) return null;		       

		Geocoder geocoder = new Geocoder();
		// setAddress : 변환하려는 주소 (경기도 성남시 분당구 등)
		// setLanguate : 인코딩 설정
		GeocoderRequest geocoderRequest = new GeocoderRequestBuilder().setAddress(location).setLanguage("ko").getGeocoderRequest();
		GeocodeResponse geocoderResponse;

		try {
			geocoderResponse = geocoder.geocode(geocoderRequest);
			
			System.out.println("지오코더 상태 : "+geocoderResponse.getStatus());
			if (geocoderResponse.getStatus() == GeocoderStatus.OK && !geocoderResponse.getResults().isEmpty()) {
				GeocoderResult geocoderResult=geocoderResponse.getResults().iterator().next();	
				LatLng latitudeLongitude = geocoderResult.getGeometry().getLocation();
				
				String[] coords = new String[2];	
				coords[0] = latitudeLongitude.getLat().toString();
				coords[1] = latitudeLongitude.getLng().toString();
		
				for(int i=0; i<coords.length; i++) {
					System.out.println("좌표확인 : "+coords[i]);
				}
				return coords;		
			}else {
				System.out.println("안되나?");
			}
		} catch (IOException ex) {
			ex.printStackTrace();
		}
		return null;
	}
	
	//게시글 상세조회
	public SbBoard boardDetailServ(int boardNo) {
		SbBoard sbBoard = showDao.boardDetail(boardNo);
		sbBoard.setSbUser(showDao.getUser(sbBoard.getUserNo()));
		sbBoard.setSelCnt(sbBoard.getSelCnt()+1);
		int result = showDao.boardSelCntPlus(sbBoard);
		if(result == 1) System.out.println("카운트+ 성공!!");
		return sbBoard;
	}
	
	//다음API사용한 위경도 구하기
	public HashMap<String, Object> getLatLon(String location) throws Exception {
    	HashMap<String, Object> resultMap = new HashMap<String, Object>();
    	String json;
    	StringBuilder sb = new StringBuilder();
    	double doubleLat = 0.0;
    	double doubleLon = 0.0;

    	try {
    		//String addr = "http://maps.google.com/maps/api/geocode/json?address=";
    		String addr = "https://apis.daum.net/local/geo/addr2coord?apikey=";
    		String apiKey = "cd4e0a08d5f3d7549bcf28b75603275a";
    		URL url = new URL(addr+apiKey+"&q=" + URLEncoder.encode(location, "UTF-8")+"&output=json");
    		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
    		conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-type", "application/json");
    		BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));

            String line;

            while ((line = rd.readLine()) != null) {
                sb.append(line);
            }
            rd.close();
            conn.disconnect();
    	} catch (Exception e) {
    		System.out.println(e.getMessage());
    	}

    	json = sb.toString();
    	System.out.println("==========json  : " + json);
    	JSONObject object = new JSONObject(json);
    	object = (JSONObject) object.get("channel");
    	JSONArray array = (JSONArray) object.get("item");
    	System.out.println("==========array  : " + array);

    	for (Object o : array) {
    		JSONObject object2 = (JSONObject) o;

    		System.out.println("==========object2  : " + object2);
    		String lat = object2.get("lat").toString();
    		String lng = object2.get("lng").toString();

    		doubleLat = Double.parseDouble(lat);
    		doubleLon = Double.parseDouble(lng);
    	}

    	resultMap.put("lat", doubleLat);
    	resultMap.put("lng", doubleLon);	     

    	System.out.println("resultMap : " + resultMap);

    	return resultMap;

   	}

	//==========================================================================================================
	
	//업종조회
	public List<SbComCate> setMainMenuBtnServ() {
		return showDao.setMainMenuBtn();
	}
	
	//업체회사조회
	public List<SbCompany> setCompanyListServ(int comCateNo){
		return showDao.setCompanyList(comCateNo);
	}
	
	//업체상세조회
	public SbCompany getComDetailServ(int comNo) {
		SbCompany sbCompany = showDao.getComDetail(comNo);
		sbCompany.setComCateName(showDao.getComCateName(sbCompany.getComCateNo()));
		
		//업체 딸린 상품 조회해야함.
		sbCompany.setSbComProductList(showDao.getComProduct(sbCompany.getComNo()));
		
		return sbCompany;
	}
	
	//상품 상세조회
	public SbComProduct getProductDetailServ(int proNo) {
		SbComProduct sbComProduct = showDao.getProductDetail(proNo);
		sbComProduct.setImgList(showDao.getProductImg(proNo));
		return sbComProduct;
	}
	
	//견적문의
	public Map<String, Object> addInquireServ(SbInquire sbInquire){
		Map<String, Object> map = new HashMap<String, Object>();
		int result = showDao.addInquire(sbInquire);
		
		UtilSms utilSms = new UtilSms();
		String orderMsg = "";
		String customerMsg = "";
		
		String check = "";
		
		//System.out.println("폰번호확인 : "+sbInquire.getOrderHp().replaceAll("-", ""));
		if(result == 1) {
			SbUser user = showDao.getUser(sbInquire.getCustomerNo());
			orderMsg += "[신청/견적 문의]\n";
			orderMsg += "[신청인] - "+user.getUserName()+"\n";
			orderMsg += "[핸드폰번호] - "+user.getUserHp()+"\n";
			orderMsg += "[문의내용] - "+sbInquire.getInqText()+"\n";
			
			check = utilSms.sendSMSAsync("고객문의", orderMsg, sbInquire.getOrderHp().replaceAll("-", "")); //업체발송
			if(check.equals("succ")) {
				customerMsg += "신청하신 문의가 접수완료 되었습니다. 해당 문의내용은 담당자 확인 후 연락드리겠습니다.\n\n";
				check = utilSms.sendSMSAsync("쇼방안내", customerMsg, user.getUserHp());
				
				if(check.equals("succ")) map.put("result", "succ");
				else if(check.equals("fail")) map.put("result", "fail");
			}else {
				map.put("result", "fail");
			}
		}
		return map;
	}
	
	//광고신청 
	public Map<String, Object> addAdOrderServ(SbAd sbAd){
		Map<String, Object> map = new HashMap<String, Object>();
		String adTypeName = "";
		if(sbAd.getAdType() == 1) {
			adTypeName = "플러스업체";
		}else if(sbAd.getAdType() == 2) {
			adTypeName = "쇼방 일반업체";
		}else if(sbAd.getAdType() == 3) {
			adTypeName = "책임중개사문의";
			sbAd.setCallbackHp(sbAd.getBrokerHp());
		}else {
			sbAd.setAdType(4);
			adTypeName = "제휴업체 신청문의(PC)";
		}
		
		int result = showDao.addAdOrder(sbAd);
		
		UtilSms utilSms = new UtilSms();
		String orderMsg = "";
		String customerMsg = "";
		
		String check = "";
		
		//System.out.println("폰번호확인 : "+sbInquire.getOrderHp().replaceAll("-", ""));
		if(result == 1) {
			orderMsg += "[업체등록 문의]\n";
			orderMsg += "[핸드폰번호] - "+sbAd.getCallbackHp()+"\n";
			orderMsg += "[종류] - "+adTypeName+"\n";
			
			check = utilSms.sendSMSAsync("쇼방업체등록문의", orderMsg, "01074845559"); //관리자발송
			if(check.equals("succ")) {
				customerMsg += "신청하신 문의가 접수완료 되었습니다. 해당 문의내용은 담당자 확인 후 연락드리겠습니다.\n";
				check = utilSms.sendSMSAsync("쇼방 업체등록안내", customerMsg, sbAd.getCallbackHp().replaceAll("-",""));
				
				if(check.equals("succ")) map.put("result", "succ");
				else if(check.equals("fail")) map.put("result", "fail");
			}else {
				map.put("result", "fail");
			}
		}
		return map;
	}
	
	
//===============================================================================================================================================================	
	
	//웹 - 업체등록
	public int addCompanyServ(SbCompany sbCompany) {
		SbImg img = new SbImg();
		SbImg img2 = new SbImg();
		UtilFile utilFile = new UtilFile();
		
		img = utilFile.singleUploadFile(sbCompany.getThumnailImg(), "thumnail");
		sbCompany.setThumnail(img.getImgFileName());
		
		img2 = utilFile.singleUploadFile(sbCompany.getMainImg(), "sumnail");
		sbCompany.setComMainImg(img2.getImgFileName());
		
		sbCompany.setComAddress(sbCompany.getComAddress()+" "+sbCompany.getComAddSangse());
		int result = showDao.addCompany(sbCompany);
		return result;
	}
	
	
	
//===============================================================================================================================================================
	
	//부동산글조회
	public List<SbBoard> getMemulBoradListServ(int curPage){
		int startNum = 0;
		if(curPage == 1) {
			startNum = 0;
		}else if(curPage > 1) {
			startNum = curPage*10 - 10;
		}
		return showDao.getMemulBoradList(startNum);
	}
	
	//부동산 글 등록
	public Map<String, Object> addMemulBoardServ(SbBoard sbBoard){
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(sbBoard.getWriteUserNo() == 0) { //작성자 정보가 없을때
			map.put("result", "fail");
		}else {
			sbBoard.setUserNo(sbBoard.getWriteUserNo());
			if(sbBoard.getBoardLocal().equals("직접입력")) { //직접입력 선택 시
				sbBoard.setBoardLocal(sbBoard.getBoardLocalDirect());
			}
			
			int result = showDao.addMemulBoard(sbBoard);
			
			if(result == 1) {
				map.put("result", "succ");
			}else {
				map.put("result", "fail");
			}
		}
		
		return map;
	}
	
//===============================================================================================================================================================
	
	//커뮤니티 글 조회 getCommunityBoradListServ
	public List<SbBoard> getCommunityBoradListServ(int curPage){
		int startNum = 0;
		if(curPage == 1) {
			startNum = 0;
		}else if(curPage > 1) {
			startNum = curPage*10 - 10;
		}
		return showDao.getCommunityBoradList(startNum);
	}
	
}
