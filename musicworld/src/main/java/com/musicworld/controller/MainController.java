package com.musicworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		return new ModelAndView("productinfo");
	}

}