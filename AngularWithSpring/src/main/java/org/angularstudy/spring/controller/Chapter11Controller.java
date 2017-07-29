package org.angularstudy.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/angularjs/")
public class Chapter11Controller {
	private static final Logger logger = LoggerFactory.getLogger(Chapter11Controller.class);
	
	@RequestMapping(value="app11-2", method=RequestMethod.GET, name="chapter 11-2")
	public String getApp11Dash2(Model model) {
		logger.debug("getApp11Dash2");
		return "chapter11/app11-2";
	}
	
	@RequestMapping(value="app11-3", method=RequestMethod.GET, name="chapter 11-3")
	public String getApp11Dash3(Model model) {
		logger.debug("getApp11Dash3");
		return "chapter11/app11-3";
	}
	
	@RequestMapping(value="app11-4", method=RequestMethod.GET, name="chapter 11-4")
	public String getApp11Dash4(Model model) {
		logger.debug("getApp11Dash4");
		return "chapter11/app11-4";
	}
	
	@RequestMapping(value="app11-5", method=RequestMethod.GET, name="chapter 11-5")
	public String getApp11Dash5(Model model) {
		logger.debug("getApp11Dash5");
		return "chapter11/app11-5";
	}
	
	@RequestMapping(value="app11-6", method=RequestMethod.GET, name="chapter 11-6")
	public String getApp11Dash6(Model model) {
		logger.debug("getApp11Dash6");
		return "chapter11/app11-6";
	}
	
	@RequestMapping(value="app11-7", method=RequestMethod.GET, name="chapter 11-7")
	public String getApp11Dash7(Model model) {
		logger.debug("getApp11Dash7");
		return "chapter11/app11-7";
	}
	
	@RequestMapping(value="app11-8", method=RequestMethod.GET, name="chapter 11-8")
	public String getApp11Dash8(Model model) {
		logger.debug("getApp11Dash8");
		return "chapter11/app11-8";
	}
}
