package com.monapp.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "matiere")
public class Matiere {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "nom")
	private String nom;
	@Column(name = "couleur")
	@Enumerated(EnumType.STRING)
	private Couleur couleur;
	@ManyToMany(mappedBy = "matieresExclues", fetch = FetchType.EAGER)
	private List<Salle> listSalles = new ArrayList<>();

	public Matiere() {
		super();
	}

	public Matiere(String nom, Couleur couleur, List<Salle> listSalles) {
		super();
		this.nom = nom;
		this.couleur = couleur;
		this.listSalles = listSalles;
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

	public Couleur getCouleur() {
		return couleur;
	}

	public void setCouleur(Couleur couleur) {
		this.couleur = couleur;
	}

	public List<Salle> getListSalles() {
		return listSalles;
	}

	public void setListSalles(List<Salle> listSalles) {
		this.listSalles = listSalles;
	}

	@Override
	public String toString() {
		return "Matiere [id=" + id + ", nom=" + nom + ", couleur=" + couleur + "]";
	}

}
