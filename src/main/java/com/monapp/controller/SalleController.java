package com.monapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monapp.dao.SalleDao;
import com.monapp.entity.Salle;
import com.monapp.entity.validator.SalleValidator;

@Controller
@RequestMapping("/salle")
public class SalleController {

	@Autowired
	SalleDao salleDao;
	
	Validator salleValidator = new SalleValidator();
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addSalle(Model model) {
		Salle salle = new Salle();
		model.addAttribute("salle", salle);
		return "salle/addSalle";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processAddSalle(
			@ModelAttribute("salle") Salle salle, BindingResult result, Model model) {
		
		salleValidator.validate(salle, result);
		System.out.println("Je suis dans processAddSalle salle ="+salle);
		
		if (salle.getId() <= 0) {
			salleDao.save(salle);			
		} else {
			salleDao.update(salle);
		}

		return "salle/listSalles";
	}
}
