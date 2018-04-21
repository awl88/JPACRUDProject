package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class NemesisTest {
	private EntityManagerFactory emf;
	private EntityManager em;
	private Nemesis nem;

	@BeforeEach
	public void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("SuperHeroApp");
		em = emf.createEntityManager();
		nem = em.find(Nemesis.class, 1);
	}

	@AfterEach
	public void tearDown() throws Exception {
		em.close();
		emf.close();
	}

	@Test
	@DisplayName("Test Nemesis mappings")
	void test_nemesis_mappings() {
		assertEquals("The Rat", nem.getName());
		assertEquals("Is an actual man sized rat", nem.getPower());
		assertEquals("Nothing out of the ordinary", nem.getWeakness());
	}
}
