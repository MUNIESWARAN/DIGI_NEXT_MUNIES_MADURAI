package com.musicworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.musicworld.musicdao.IMusicDao;
import com.musicworld.musicdao.MusicDao;

@Controller

public class MainController {

	@RequestMapping("/")
	public ModelAndView index() {
		return  new ModelAndView( "index") ;
	}

	@RequestMapping("/aboutus")
	public ModelAndView aboutus() {
		return  new ModelAndView("aboutus");
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		return  new ModelAndView("login");
	}

	@RequestMapping("/signup")
	public ModelAndView signup() {
		return new ModelAndView( "signup" );
	}
	
	@RequestMapping("/productinfo")
	public ModelAndView productinfo(){
		
		IMusicDao dao = new MusicDao();		
		Gson gson = new Gson();		
		String temp= gson.toJson(dao.getAllAlbums());		 
	 	return new ModelAndView("productinfo","data",temp);
	}
	
	@RequestMapping("/dummy")
	public ModelAndView dummy(){
		return new ModelAndView("dummy");
	}
	
	@RequestMapping("/addcart")
	public ModelAndView addcart(){
	 return new ModelAndView("addcart");
	}
	

}