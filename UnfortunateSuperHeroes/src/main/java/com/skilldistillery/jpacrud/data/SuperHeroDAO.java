package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.SuperHero;



public interface SuperHeroDAO {
	SuperHero sh = new SuperHero();
	public SuperHero create(SuperHero sh);
	public SuperHero retreiveById(int id);
	public List<SuperHero> retreiveAll();
	public SuperHero update(int id, SuperHero sh);
	public boolean destroy(int id);

}
