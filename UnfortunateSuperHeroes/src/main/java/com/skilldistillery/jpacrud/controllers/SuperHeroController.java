package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.SuperHeroDAO;
import com.skilldistillery.jpacrud.entities.SuperHero;

@Controller
public class SuperHeroController {

	@Autowired
	private SuperHeroDAO shDAO;

	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}

	@RequestMapping(path = "getSuperHeroById.do", method = RequestMethod.GET)
	public ModelAndView getSuperHeroById(@RequestParam(name = "shid") Integer shid) {
		ModelAndView mv = new ModelAndView();
		SuperHero sh = shDAO.retreiveById(shid);
		mv.addObject("superhero", sh);
		mv.setViewName("WEB-INF/views/results.jsp");
		return mv;
	}
	
	@RequestMapping(path = "getAllSuperHeroes.do", method = RequestMethod.GET)
	public ModelAndView getAllSuperHeroes() {
		ModelAndView mv = new ModelAndView();
		List<SuperHero> sh = shDAO.retreiveAll();
		mv.addObject("allSuperheroes", sh);
		mv.setViewName("WEB-INF/views/results.jsp");
		return mv;
	}
	
	@RequestMapping(path = "createSuperHero.do", method = RequestMethod.GET)
	public ModelAndView createSuperHero() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/create.jsp");
		return mv;
	}
	
	@RequestMapping(path = "createSuperHeroPage.do", method = RequestMethod.POST)
	public ModelAndView createSuperHeroPage(SuperHero sh) {
		ModelAndView mv = new ModelAndView();
		SuperHero newsh = shDAO.create(sh);
		mv.addObject("update", newsh);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}
	
	@RequestMapping(path = "updateSuperHero.do", method = RequestMethod.GET)
	public ModelAndView updateSuperHero(@RequestParam(name = "shid") Integer shid) {
		ModelAndView mv = new ModelAndView();
		SuperHero sh = shDAO.retreiveById(shid);
		mv.addObject("sh", sh);
		mv.setViewName("WEB-INF/views/update.jsp");
		return mv;
	}
	
	@RequestMapping(path = "updateSuperHeroPage.do", method = RequestMethod.POST)
	public ModelAndView updateSuperHeroPage(SuperHero sh, @RequestParam(name = "shid") Integer shid) {
		ModelAndView mv = new ModelAndView();
		SuperHero updatedsh = shDAO.update(shid, sh);
		mv.addObject("update", updatedsh);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}
	
	@RequestMapping(path = "deleteSuperHero.do", method = RequestMethod.POST)
	public ModelAndView deleteSuperHero(@RequestParam(name = "shid")Integer shid) {
		ModelAndView mv = new ModelAndView();
		shDAO.destroy(shid);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}
}
