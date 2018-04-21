package com.skilldistillery.jpacrud.entities;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SuperHero {
	// Fields
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String power;
	private String weakness;
	@Enumerated(EnumType.STRING)
	private Active active;

	// Constructors
	public SuperHero() {
	}

	// Getters & Setters
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public String getWeakness() {
		return weakness;
	}

	public void setWeakness(String weakness) {
		this.weakness = weakness;
	}

	public Active getActive() {
		return active;
	}

	public void setActive(Active active) {
		this.active = active;
	}

	public int getId() {
		return id;
	}

	// toString
	@Override
	public String toString() {
		return "superheroes [id=" + id + ", name=" + name + ", power=" + power + ", weakness=" + weakness + ", active="
				+ active + "]";
	}
}
