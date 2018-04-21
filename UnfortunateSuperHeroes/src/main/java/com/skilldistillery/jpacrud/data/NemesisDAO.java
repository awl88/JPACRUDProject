package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Nemesis;

public interface NemesisDAO {
	Nemesis nem = new Nemesis();
	public Nemesis create(Nemesis nem);
	public Nemesis retreiveById(int id);
	public List<Nemesis> retreiveAll();
	public Nemesis update(int id, Nemesis nem);
	public boolean destroy(Nemesis nem);
}
