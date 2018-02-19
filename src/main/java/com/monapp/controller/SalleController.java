package com.monapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.monapp.dao.SalleDao;
import com.monapp.entity.Salle;

@Controller
@RequestMapping("/salle")
public class SalleController {

	@Autowired
	SalleDao salleDao;
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addSalle(Model model) {
		return "salle/addSalle";
	}
	
	@RequestMapping(value="/error", method=RequestMethod.GET)
	public String addSalles(Model model) {
		return "salle/addSalle";
	}
}
