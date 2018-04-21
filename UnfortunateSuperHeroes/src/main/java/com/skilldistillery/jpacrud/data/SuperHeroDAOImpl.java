package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.entities.SuperHero;

@Transactional
@Component
public class SuperHeroDAOImpl implements SuperHeroDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public SuperHero create(SuperHero sh) {
		em.persist(sh);
		em.flush();
		return sh;
	}

	@Override
	public SuperHero retreiveById(int id) {
		SuperHero sh = em.find(SuperHero.class, id);
		return sh;
	}

	@Override
	public List<SuperHero> retreiveAll() {
		String query = "SELECT s FROM SuperHero s";
		List<SuperHero> sh = em.createQuery(query, SuperHero.class).getResultList();
		return sh;
	}

	@Override
	public SuperHero update(int id, SuperHero sh) {
		SuperHero managed = em.find(SuperHero.class, id);
		managed.setName(sh.getName());
		managed.setPower(sh.getPower());
		managed.setWeakness(sh.getWeakness());
		managed.setActive(sh.getActive());
		em.persist(managed);
		em.flush();
		return managed;
	}

	@Override
	public boolean destroy(int id) {
		try {
			SuperHero sh = em.find(SuperHero.class, id);
			em.remove(sh);
		}
		catch (IllegalArgumentException e){
			e.printStackTrace();
		}
		return false;
	}
}
