package com.monapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monapp.dao.MatiereDao;
import com.monapp.dao.SalleDao;
import com.monapp.entity.Matiere;
import com.monapp.entity.Salle;
import com.monapp.entity.validator.SalleValidator;

@Controller
@RequestMapping("/salles")
public class SalleController {

	@Autowired
	SalleDao salleDao;

	@Autowired
	MatiereDao matiereDao;
	
	Validator salleValidator = new SalleValidator();
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addSalle(Model model) {
		Salle salle = new Salle();
		model.addAttribute("salle", salle);
		
		List<Matiere> matieres = matiereDao.findAll();
		model.addAttribute("matieres", matieres);
		
		model.addAttribute("actionPage", "Ajouter");
		
		return "salle/addSalle";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processAddSalle(
			@ModelAttribute("salle") Salle salle, BindingResult result, Model model, HttpServletRequest request) {
		
		String[] matieres = request.getParameterValues("matieres[]");
		
		if(matieres != null) {
			for (String mat : matieres) {
				Matiere matiere = matiereDao.findByPrimaryKey(Integer.valueOf(mat));
				salle.getMatieresExclues().add(matiere);
			}
		}
		
		salleValidator.validate(salle, result);
		
		if (salle.getId() <= 0) {
			salleDao.save(salle);
		} else {
			salleDao.update(salle);
		}

		return "redirect:/salles/list";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editSalle(@PathVariable(value="id") int id, Model model) {
		Salle salle = salleDao.findByPrimaryKey(id);
		List<Matiere> matiereList = matiereDao.findAll();
		model.addAttribute("matieres", matiereList);
		
		if(salle == null) {
			return "redirect:/error";
		}
		model.addAttribute("salle", salle);
		model.addAttribute("actionPage", "Editer");
		
		return "salle/addSalle";
	}
	
	@RequestMapping(value="/list")
	public String listSalles(Model model) {		
		List<Salle> liste = salleDao.findAll();
		System.out.println("listeSalles = "+liste);
		model.addAttribute("listeSalles", liste);
		
		return "salle/listSalles";
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String getSalleDetail(Model model, @PathVariable("id") int id) {
		Salle salle = salleDao.findByPrimaryKey(id);
		model.addAttribute("salleFromDb", salle);
		
		return "salle/showSalle";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String deleteSalle(Model model, @PathVariable("id") int id) {
		Salle salle = salleDao.findByPrimaryKey(id);
		salleDao.delete(salle);

		return "redirect:/salles/list";
	}
}
