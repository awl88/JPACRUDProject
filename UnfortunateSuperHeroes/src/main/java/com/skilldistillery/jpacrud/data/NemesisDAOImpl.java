package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.entities.Nemesis;

@Transactional
@Component
public class NemesisDAOImpl implements NemesisDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Nemesis create(Nemesis nem) {
		em.persist(nem);
		return nem;
	}

	@Override
	public Nemesis retreiveById(int id) {
		Nemesis nem = em.find(Nemesis.class, id);
		return nem;
	}

	@Override
	public List<Nemesis> retreiveAll() {
		String query = "SELECT n FROM Nemesis n";
		List<Nemesis> nem = em.createQuery(query, Nemesis.class).getResultList();
		return nem;
	}

	@Override
	public Nemesis update(int id, Nemesis nem) {
		Nemesis managed = em.find(Nemesis.class, id);
		managed.setName(nem.getName());
		managed.setPower(nem.getPower());
		managed.setWeakness(nem.getWeakness());
		return nem;
	}

	@Override
	public boolean destroy(Nemesis nem) {
		em.remove(nem);
		return false;
	}
}
