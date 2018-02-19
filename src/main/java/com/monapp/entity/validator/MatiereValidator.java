package com.monapp.entity.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.monapp.entity.Matiere;

public class MatiereValidator implements Validator{

    @Override
    public boolean supports(Class clazz) {
        return Matiere.class.equals(clazz);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"nom", "nom.empty", "champ vide!!");
        
    }

}