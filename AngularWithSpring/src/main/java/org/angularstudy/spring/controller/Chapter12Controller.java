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
	public String getApp12Dash2(Model model) {
		logger.debug("getApp12Dash1");
		return "chapter12/app12-1";
	}
	
}
