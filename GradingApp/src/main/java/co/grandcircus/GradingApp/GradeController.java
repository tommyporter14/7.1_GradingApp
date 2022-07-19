package co.grandcircus.GradingApp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class GradeController {

	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/grades";
	}
	
	@RequestMapping("/grades")
	public String listGrades(Model model) {
		List<Grade> grades = repo.findAll();
		
		model.addAttribute("grades", grades);
		
		return "listGrades";
	}
}
