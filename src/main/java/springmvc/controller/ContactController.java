package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.UserClass;
import springmvc.service.UserService;

@Controller
public class ContactController {
	
	
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void commonmodal(Model m) {
		m.addAttribute("tittle","FORM FILL");
		m.addAttribute("desc", "PLEASE FILL FORM TO CONTINUE");
	}
	@RequestMapping("/contact")
	public String showForm()
	{
		
		return "contact";
	}
	
	@RequestMapping(path = "/process", method = RequestMethod.POST)
	public String formSubmit(@ModelAttribute UserClass user,Model model)
	{
		if(user.getUsername().isBlank()||user.getEmailAddress().isBlank()||user.getPassword().isBlank())
		{
			System.out.println("please filled form properly");
			return "redirect:/contact";
		}
		System.out.println(user);
		model.addAttribute("userclass", user);
		int id=this.userService.createUser(user);
		model.addAttribute("id", "User created with id"+id);
		
		return "success";
	}

}

//@RequestMapping(path = "/process", method = RequestMethod.POST)
//public String formSubmit(@RequestParam("emailAddress") String email,
//		@RequestParam("username") String username,
//		@RequestParam("password") String password,
//		Model model)
//{
//	System.out.println("useremail "+email);
//	System.out.println("username "+username);
//	System.out.println("password "+password);
//	model.addAttribute("name", username);
//	model.addAttribute("email", email);
//	model.addAttribute("password",password);
//	return "success";
//}
