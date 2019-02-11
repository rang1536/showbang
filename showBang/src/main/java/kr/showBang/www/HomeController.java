package kr.showBang.www;

import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.showBang.www.domain.SbCompany;
import kr.showBang.www.service.ShowService;
import kr.showBang.www.util.UtilFile;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ShowService showServ;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		/*logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );*/
		
		/*return "home";*/
		/*return "randing2";*/
		/*return "maxbiz/index";*/
		return "index";
	}
	
	/*@RequestMapping(value = "/robots.txt", method = RequestMethod.GET)
	public String getRobots(HttpServletRequest request) {
		return (Arrays.asList("jbshow.kr", "www.jbshow.kr").contains(request.getServerName())) ? "robotsAllowed" : "robotsDisallowed";
	}
	*/
	/*@RequestMapping(value = "/hsberry", method = RequestMethod.GET)
	public String hsberry() {
		return "hsberry";
	}*/
	
	@RequestMapping(value = "/randing2", method = RequestMethod.GET)
	public String randing2() {
		return "randing2";
	}
	
	@RequestMapping(value = "/silver", method = RequestMethod.GET)
	public String silver() {
		return "silver";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "maxbiz/index";
	}
	
	@RequestMapping(value = "/addCompanyForm", method = RequestMethod.GET)
	public String addCompanyForm(Model model) {
		model.addAttribute("comCateList", showServ.setMainMenuBtnServ());
		return "maxbiz/company/addcompany";
	}
	
	@RequestMapping(value = "/addCompany", method = RequestMethod.POST)
	public String addCompany(Model model, SbCompany sbCompany) {
		System.out.println("sbCompany확인 : "+sbCompany);
		//model.addAttribute("comCateList", showServ.setMainMenuBtnServ());
		
		int result = showServ.addCompanyServ(sbCompany);
		if(result == 1) {
			model.addAttribute("addResult", "succ");
		}else {
			model.addAttribute("addResult", "fail");
		}
		return "maxbiz/index";
	}
}
