package co.grandcircus.GradingApp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GradeController {

	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String listGrades(Model model) {
		List<Grade> grades = repo.findAll();
		model.addAttribute("grades", grades);
		return "listGrades";
	}
	
	@RequestMapping("/delete")
	public String deleteGrade(@RequestParam String id) {
		repo.deleteById(id);
		return "redirect:/";
	}
	
	@RequestMapping("/addGrade")
	public String showAddGrade() {
		return "addGrade";
	}
	
	@PostMapping("/confirmationPage")
	public String showConfirmationPage(@RequestParam String name, @RequestParam String type, @RequestParam double score, @RequestParam double total, Model model) {
		repo.save(new Grade(name, type, score, total));
		model.addAttribute("name", name);
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		
		return "confirmationPage";
	}
	
}
