package com.monapp.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="salle")
public class Salle {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="nom")
	private String nom;
	
	@Column(name="capacite")
	private int capacite;

	@ManyToMany
	private List<Matiere> matieresExclues = new ArrayList<>();
	
	public Salle() {
		super();
	}
	
	public Salle(String nom, int capacite, List<Matiere> matieresExclues) {
		super();
		this.nom = nom;
		this.capacite = capacite;
		this.matieresExclues = matieresExclues;
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
	
	public List<Matiere> getMatieresExclues() {
		return matieresExclues;
	}
	
	public void setMatieresExclues(List<Matiere> matieresExclues) {
		this.matieresExclues = matieresExclues;
	}
	
	public int getCapacite() {
		return capacite;
	}
	
	public void setCapacite(int capacite) {
		this.capacite = capacite;
	}
	
	@Override
	public String toString() {
		return "Salle [id=" + id + ", nom=" + nom + ", matieresExclues=" + matieresExclues + ", capacite=" + capacite + "]";
	}
}
