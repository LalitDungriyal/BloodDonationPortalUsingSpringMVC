package springmvc.controller;

import java.io.File;
import java.io.FileOutputStream;

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
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import springmvc.model.DonationModel;
import springmvc.model.User;
import springmvc.model.UserInfo;
import springmvc.service.DonationService;
import springmvc.service.UserInfoService;
import springmvc.service.UserService;

@Controller
public class PortalController {


	@Autowired
	private DonationService donationService;
	
	@Autowired
	private UserInfoService userInfoService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(path="/processdonationform",method=RequestMethod.POST)
	public String handleDonationForm(@ModelAttribute DonationModel donationObj,Model model,HttpServletResponse resp)
	{
		
		this.donationService.add(donationObj);
		
		model.addAttribute("message","SUCCESSFULLY REGISTERED !!");
		
		return "redirect:/donate";
	}
	
	@RequestMapping(path="/portal")
	public String portal(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		
		
		 if(session.getAttribute("login")!=null && session.getAttribute("login").equals(true)) 
        	return "portal";
	
		return "redirect:/login";
		
	}
	
	@RequestMapping(path="/mydonations")
	public String mydonations(HttpServletRequest request)
	{
		HttpSession session=request.getSession();  
		
		
		 if(session.getAttribute("login")!=null && session.getAttribute("login").equals(true))
        	return "mydonations";
	
		return "redirect:/login";
	}
	
	@RequestMapping(path="/donate")
	public String donate(HttpServletRequest request)
	{
		HttpSession session=request.getSession();  
        
		 if(session.getAttribute("login")!=null && session.getAttribute("login").equals(true))
        	return "donate";
	
		return "redirect:/login";
	}
	
	@RequestMapping(path="/learnaboutdonation")
	public String learnaboutdonation(HttpServletRequest request)
	{
		HttpSession session=request.getSession(); 
		
		 if(session.getAttribute("login")!=null && session.getAttribute("login").equals(true))
        	return "learnaboutdonation";
	
		return "redirect:/login";
	}
	
	@RequestMapping(path="/events")
	public String events(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		
		 if(session.getAttribute("login")!=null && session.getAttribute("login").equals(true))
        	return "events";
	
		return "redirect:/login";
	}
	
	@RequestMapping(path="/profile")
	public String profile(HttpServletRequest request)
	{
		HttpSession session=request.getSession();  
		 if(session.getAttribute("login")!=null && session.getAttribute("login").equals(true))
        	return "profile";
	
		return "redirect:/login";
	}
	
	@RequestMapping(path="/uploadImage",method=RequestMethod.POST)
	public String fileupload(@RequestParam("profile")CommonsMultipartFile file,HttpSession session)
	{
		byte[] data=file.getBytes();
		
		String path=session.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"profileImage"+File.separator+file.getOriginalFilename();
		
		String username=(String) session.getAttribute("logininfo");
		
		User user=userService.get(username);
		
		UserInfo userInfo=new UserInfo();
		
		userInfo.setUsername(user.getUsername());
		userInfo.setFname(user.getFname());
		userInfo.setLname(user.getLname());
		userInfo.setBloodgroup(user.getBloodgroup());
		userInfo.setAge(user.getAge());
		userInfo.setImage(data);
		
		userInfoService.createUser(userInfo);
		
		System.out.println(user);
		try {
			
			FileOutputStream fos=new FileOutputStream(path);
			
			fos.write(data);
			fos.close();
			
			System.out.println(path);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "redirect:/profile";
	}
	
	
}
