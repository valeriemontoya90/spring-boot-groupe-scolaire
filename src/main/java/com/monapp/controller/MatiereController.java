package com.monapp.controller;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

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
import com.monapp.entity.Couleur;
import com.monapp.entity.Matiere;
import com.monapp.entity.validator.MatiereValidator;




@Controller
@RequestMapping(value="/matiere")
public class MatiereController {
    
    @Autowired
    private MatiereDao matiereDao;
    
    Validator matiereValidator = new MatiereValidator();
    
    
    @RequestMapping(value = "/add")
    public String newMatiere(Model model) {
        model.addAttribute("action", "Ajouter");
        Matiere ma = new Matiere();
        model.addAttribute("couleurs", Couleur.values());
        model.addAttribute("matiere", ma);
        return "matiere/addMatiere";
    }
    
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addNewMatiere(Model model, @ModelAttribute("matiere") 
    Matiere matiere, BindingResult result) {
    matiereValidator.validate(matiere,result);
    
    if(result.hasErrors()) {
        return "matiere/addMatiere";
    }
    if (matiere.getId() <= 0) {
            matiereDao.save(matiere);
        } else {
            matiereDao.update(matiere);
        }
        return "matiere/listMatiere";
    }
    
    @RequestMapping(value = "/edit/{id}")
    public String getAddNewMatiere(@PathVariable("id") int id, Model model) {
        model.addAttribute("action", "Editer");
        model.addAttribute("couleurs", Couleur.values());
        Matiere ma = matiereDao.findByPrimaryKey(id);
        if (ma == null) {
            return "redirect:/error";
        }
        model.addAttribute("matiere", ma);
        return "matiere/addMatiere";
    }

    @RequestMapping(value = "/{id}/")
    public String getMatiereDetail(Model model, @PathVariable("id") int id) {
        Matiere ce = matiereDao.findByPrimaryKey(id);
        model.addAttribute("matiereFromDb", ce);
        return "matiere/showMatiere";
    }

    @RequestMapping(value = "/list")
    public String listMatiere(Model model) {
        List<Matiere> matieres = matiereDao.findAll();
        model.addAttribute("matieres", matieres);
        model.addAttribute("couleurs", Couleur.values());
        return "matiere/listMatiere";
    }
    
    @RequestMapping(value = "/del/{id}")
    public String deleteMatiere(Model model, @PathVariable("id") int id) {
        Matiere ma = matiereDao.findByPrimaryKey(id);
        matiereDao.delete(ma);
        return "redirect:/matiere/list";

    }

}