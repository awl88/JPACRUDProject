package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class SuperHeroTest {
	private EntityManagerFactory emf;
	private EntityManager em;
	private SuperHero sh;

	@BeforeEach
	public void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("SuperHeroApp");
		em = emf.createEntityManager();
		sh = em.find(SuperHero.class, 1);
	}

	@AfterEach
	public void tearDown() throws Exception {
		em.close();
		emf.close();
	}

	@Test
	@DisplayName("Test SuperHero mappings")
	void test_superHero_mappings() {
		assertEquals("Snake Man", sh.getName());
		assertEquals("Can summon snakes", sh.getPower());
		assertEquals("Ophidiophobia (fear of snakes)", sh.getWeakness());
		assertEquals(Active.ACTIVE, sh.getActive());
	}
}
