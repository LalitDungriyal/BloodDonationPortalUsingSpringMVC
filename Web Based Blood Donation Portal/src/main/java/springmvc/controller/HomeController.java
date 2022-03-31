package springmvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import springmvc.service.DonationService;
import springmvc.service.UserService;
import springmvc.model.DonationModel;
import springmvc.model.User;

@Controller
public class HomeController {

	
	
	@RequestMapping("/home")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/about")
	public String about()
	{
		return "aboutus";
	}
	
	@RequestMapping("/services")
	public String services()
	{
		return "services";
	}
	
	@RequestMapping("/gallary")
	public String gallary()
	{
		return "gallary";
	}
	
	
	@RequestMapping("/searchInSite")
	public RedirectView search(@RequestParam("queryBox") String query)
	{
		String url="http://google.com/search?q="+query+" inurl:bloodportal.com";
		
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);		
		return redirectView;
	}
	
	
	
}
