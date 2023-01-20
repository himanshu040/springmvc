package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/first")
public class HomeController {
	

    @RequestMapping("/home")
	public String home(Model model)
	{
    	System.out.println("this is home url");
    	model.addAttribute("name","Himanshu Singh");
    	List<String> student=new ArrayList<String>();
    	student.add("Himanshu");
    	student.add("Yanni");
    	student.add("Anuj");
    	student.add("Aman");
    	model.addAttribute("id",12345);
    	model.addAttribute("list", student);
		return "index";
	}
    
    @RequestMapping("/about")
   	public String about()
   	{
       	System.out.println("this is about url");
   		return "about";
   	}
    
    @RequestMapping("/help")
   	public ModelAndView help()
   	{
    	ModelAndView model=new ModelAndView();
    	model.addObject("name", "Yanni Goyal");
    	model.addObject("rollnumber", 1802378);
    	LocalDateTime dateTime=LocalDateTime.now();
    	model.addObject("date",dateTime);
    	List<Integer> marks=new ArrayList<Integer>();
    	marks.add(20);
    	marks.add(30);
    	marks.add(50);
    	marks.add(90);
    	model.addObject("marks",marks);
    	model.setViewName("help");
       	System.out.println("this is help url");
   		return model;
   	}
}
