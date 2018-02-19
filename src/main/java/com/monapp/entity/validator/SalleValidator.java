package com.monapp.entity.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.monapp.entity.Salle;

public class SalleValidator implements Validator {

		@Override
		public boolean supports(Class<?> clazz) {
			return clazz == Salle.class;
		}

		@Override
		public void validate(Object obj, Errors errors) {
			Salle salle = (Salle) obj;

			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nom", "nom vide");

			if (salle.getNom() != null && (salle.getNom().length() < 3 || salle.getNom().length() > 24)) {
				errors.rejectValue("nom", "nom invalide");
			}
		}
	}
