package org.angularstudy.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/angularjs/")
public class Chapter12Controller {
	private static final Logger logger  = LoggerFactory.getLogger(Chapter12Controller.class);
	
	@RequestMapping(value="app12-1", method=RequestMethod.GET, name="chapter 12-1")
	public String getApp12Dash1(Model model) {
		logger.debug("getApp12Dash1");
		return "chapter12/app12-1";
	}
	
	@RequestMapping(value="app12-2", method=RequestMethod.GET, name="chapter 12-2")
	public String getApp12Dash2(Model model) {
		logger.debug("getApp12Dash2");
		return "chapter12/app12-2";
	}
	
	@RequestMapping(value="app12-3", method=RequestMethod.GET, name="chapter 12-3")
	public String getApp12Dash3(Model model) {
		logger.debug("getApp12Dash3");
		return "chapter12/app12-3";
	}

	@RequestMapping(value="app12-4", method=RequestMethod.GET, name="chapter 12-4")
	public String getApp12Dash4(Model model) {
		logger.debug("getApp12Dash4");
		return "chapter12/app12-4";
	}

	@RequestMapping(value="app12-5", method=RequestMethod.GET, name="chapter 12-5")
	public String getApp12Dash5(Model model) {
		logger.debug("getApp12Dash5");
		return "chapter12/app12-5";
	}
}
