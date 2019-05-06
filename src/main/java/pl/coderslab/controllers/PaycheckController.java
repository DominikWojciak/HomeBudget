package pl.coderslab.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entity.Paycheck;
import pl.coderslab.model.Months;
import pl.coderslab.repository.PaycheckRepository;

@Controller
@RequestMapping("/paycheck")
public class PaycheckController {
	@Autowired
	private PaycheckRepository paycheckRepo;

	@GetMapping("/form")
	public String form(Model model) {
		model.addAttribute("paycheck", new Paycheck());
		return "paycheckForm";
	}

	@PostMapping("/form")
	public String formPost(@Valid Paycheck paycheck, BindingResult result) {
		if (result.hasErrors()) {
			return "paycheckForm";
		}
		this.paycheckRepo.save(paycheck);
		return "redirect:/paycheck/list";
	}

	@GetMapping("/list")
	public String list() {
		return "paycheckList";
	}

	@ModelAttribute("months")
	public List<String> getMonths() {
		return Months.getMonths();
	}

	@ModelAttribute("paychecks")
	public List<Paycheck> getPaychecks() {
		return this.paycheckRepo.findAll();
	}
}
