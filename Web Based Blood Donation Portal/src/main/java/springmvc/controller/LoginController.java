package springmvc.controller;

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

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class LoginController {


	@Autowired
	private UserService userService;
	
	
	
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@RequestMapping("/signup")
	public String signup()
	{
		return "signup";
	}
	
	@RequestMapping(path="/processRegistrationForm",method=RequestMethod.POST)
	public String handleForm(@ModelAttribute User user,Model model)
	{
		
		if(user.getUsername()=="" || user.getUseremail().contains("@")==false || user.getPassword().equals(user.getConpassword())==false)
		{
			return "redirect:/signup";
		}
		
		this.userService.createUser(user);
		
		return "redirect:/login";
	}
	
	@RequestMapping(path="processLoginForm",method=RequestMethod.POST)
	public String handleLoginForm(HttpServletRequest request,HttpServletResponse response,Model model,@RequestParam("username") String username,@RequestParam("password") String password)
	{
		
		if(this.userService.loginUser(username, password)) {
			HttpSession session=request.getSession();  
	        session.setAttribute("login",true); 
	        session.setAttribute("logininfo", username);
	        System.out.println("success login");
	        return "redirect:/portal";
		}
		
		
		
		model.addAttribute("message","Invalid Credentials !!");
			return "redirect:/login";
	}
	
	@RequestMapping(path="/processLogoutForm",method=RequestMethod.POST)
	public String handleLogoutForm(HttpServletRequest request,HttpServletResponse response)
	{
		 HttpSession  session = request.getSession();
		 
	        try{
	            session.invalidate();
	            String message = "Logout!";
	            request.setAttribute("loginMsg", message);
	        	System.out.println("done logout");
	        }catch(Exception e){
	            e.printStackTrace();
	        }
		
		
        	return "redirect:/home";
	}
	
}
