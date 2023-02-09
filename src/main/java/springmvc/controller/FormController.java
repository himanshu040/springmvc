package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.Student;

@Controller
public class FormController {
 
	@RequestMapping("/complex")
	 public String showForm()
	 {
		 return "ComplexForm";
	 }
	
	@RequestMapping(path="/handleform",method=RequestMethod.POST)
	public String formHandler(@ModelAttribute("student") Student student,BindingResult result)
	{
	    if(result.hasErrors())
	    {
	    	return "ComplexForm";
	    }
		System.out.println(student.toString());
		System.out.println("date========="+student.getDob());
		System.out.println("Address========="+student.getAddress());
		return "successFormComplex";
	}
}
