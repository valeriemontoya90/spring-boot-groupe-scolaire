package com.monapp.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="salle")
public class Salle {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nom;
	private List<Matiere> exclues;
	private int capacite;
	
	public Salle() {
		super();
	}
	
	public Salle(String nom, List<Matiere> exclues, int capacite) {
		super();
		this.nom = nom;
		this.exclues = exclues;
		this.capacite = capacite;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public List<Matiere> getExclues() {
		return exclues;
	}
	public void setExclues(List<Matiere> exclues) {
		this.exclues = exclues;
	}
	public int getCapacite() {
		return capacite;
	}
	public void setCapacite(int capacite) {
		this.capacite = capacite;
	}
	
	@Override
	public String toString() {
		return "Salle [id=" + id + ", nom=" + nom + ", exclues=" + exclues + ", capacite=" + capacite + "]";
	}
}
